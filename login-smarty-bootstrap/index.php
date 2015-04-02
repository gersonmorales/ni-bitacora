<?php

  session_start(); 

  if(!isset($_SESSION['userid'])) {
      header("location:login.php");
  }
  require('include.php');
  include_once('conexion.php');

  $sql = "SELECT pac_id, pac_nombre, pac_apellido1, pac_apellido2 ";
  $sql.= "FROM paciente ";    
  $sql.= "WHERE 1 ";
  mysql_query("SET NAMES 'utf8'");
  $rec = mysql_query($sql);
    
  $result;
  while($row = mysql_fetch_assoc($rec)) {
      $result[][$row['pac_id']] = $row['pac_nombre']." ".$row['pac_apellido1']." ".$row['pac_apellido2'];
  }


  $nombre = $_SESSION['usernombre'] . " " . $_SESSION['userapellido'];
  
  $smarty->assign('sesion',$_SESSION);
  $smarty->assign('pacientes',$result);
  $smarty->assign('nombre',$nombre);
  $smarty->assign('title','Pagina principal');
  $smarty->assign('today',date("Y-m-d"));
  $smarty->display('index.tpl');
?>
