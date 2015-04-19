<?php

  session_start(); 

  if(!isset($_SESSION['userid'])) {
      header("location:login.php");
  }
  require('include.php');
  include_once('conexion.php');

/* Registro de actividad */
  $ipcli = get_client_ip_server();
  $pro_id = $_SESSION['userid'];

  $sql = "INSERT INTO log (log_datetime, pro_id, log_ip, log_action) ";
  $sql.= "VALUES (NOW(), $pro_id, '$ipcli', 'CAL')";
  mysql_query($sql);
  #error_log("[SQL] $sql",0);

  $sql = "SELECT pac_id, pac_nombre, pac_apellido1, pac_apellido2 ";
  $sql.= "FROM paciente ";    
  $sql.= "WHERE 1 ";
  mysql_query("SET NAMES 'utf8'");
  $rec = mysql_query($sql);
    
  $result;
  while($row = mysql_fetch_assoc($rec)) {
      $result[][$row['pac_id']] = $row['pac_nombre']." ".$row['pac_apellido1']." ".$row['pac_apellido2'];
  }

  $nombre = $_SESSION['usernombre']." ".$_SESSION['userapellido'];

  $smarty->assign('title','Pagina principal');
  $smarty->assign('nombre',$nombre);
  $smarty->assign('today',date("Y-m-d"));
  $smarty->assign('cal','yes');
  $smarty->display('cal.tpl');
?>