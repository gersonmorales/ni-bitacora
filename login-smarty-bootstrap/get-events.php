<?php

/*
-------------------------------------------------------------------------------
 This script reads event data from a JSON file and outputs those events which 
are within the range supplied by the "start" and "end" GET parameters.
 An optional "timezone" GET parameter will force all ISO8601 date stings to a 
given timezone.

 Requires PHP 5.2.0 or higher.
-------------------------------------------------------------------------------
*/

// Require our Event class and datetime utilities
require('lib/utils.php');
require('lib/col.php');
include_once('conexion.php');
session_start();

if(!isset($_SESSION['userid'])) {
    header("location:login.php");
}

// Short-circuit if the client did not give us a date range.
if (!isset($_GET['start']) || !isset($_GET['end'])) {
    die("Please provide a date range.");
}

// Parse the start/end parameters.
// These are assumed to be ISO8601 strings with no time nor timezone, 
// like "2013-12-29".
// Since no timezone will be present, they will parsed as UTC.
$range_start = parseDateTime($_GET['start']);
$range_end = parseDateTime($_GET['end']);

// Parse the timezone parameter if it is present.
$timezone = null;
if (isset($_GET['timezone'])) {
    $timezone = new DateTimeZone($_GET['timezone']);
}

// Parse filters
$id_filtro = "";
foreach (array_keys($_GET) as $key => $value) 
{
  list($empty, $id) = explode("pac_", $value);
  if (empty($empty) AND is_numeric($id) AND $_GET[$value] == "true") {
    $id_filtro .= " {$id},";
  }
}
$filtro_pac = substr($id_filtro, 0, -1);

$pro_id = $_SESSION['userid'];
// Read and parse our events JSON file into an array of event data arrays.
mysql_query("SET NAMES 'utf8'");
$sql ="SELECT a.ate_id as id,
              pac.pac_nombre as pac_nombre, 
              pac.pac_apellido1 as pac_apellido1,
              pro.pro_nombre as pro_nombre,
              pro.pro_apellido1 as pro_apellido1, 
              a.ate_fecha as start,
              a.pac_id as pac_id
       FROM paciente pac, profesional pro, atencion a 
       WHERE a.pro_id = pro.pro_id
         AND a.pac_id = pac.pac_id";

$sql.=" AND a.pro_id = $pro_id ";
// La primera llamada es sin filtro
if ($_GET['new'] == "1" ) {
  # code...
  $sql.=" AND a.pac_id IN ( {$filtro_pac} ) ";
}
$sql.="ORDER BY a.pac_id";
//error_log("[SQL] $sql",0);

$rec = mysql_query($sql);
$reg = array();
$select = array();
$color_id = 0;
$prev_id = 0;
while($row = mysql_fetch_array($rec)) 
{
    $id=$row['id'];
    $pac_id=$row['pac_id'];
    
    $title=$row['pac_nombre']." ".$row['pac_apellido1'];
    $start=$row['start'];
    if ($prev_id != $pac_id) {
      // Para que siempre tenga el mismo color
        $color_id = ($pac_id % count($color));
        $prev_id = $pac_id;

        $select[] = array('id'=> $pac_id, 'text'=> strstr($title, '(', true));
    }
    $reg[] = array('id'=> $pac_id, 'title'=> $title, 'start'=> $start,
                   'color'=> $color[$color_id]);
}

$json = json_encode($reg);

$input_arrays = json_decode($json, true);

// Accumulate an output array of event data arrays.
$output_arrays = array();
foreach ($input_arrays as $array) 
{
    // Convert the input array into a useful Event object
    $event = new Event($array, $timezone);

    // If the event is in-bounds, add it to the output
    if ($event->isWithinDayRange($range_start, $range_end)) {
        $output_arrays[] = $event->toArray();
    }
}

// Send JSON to the client.
echo json_encode($output_arrays);