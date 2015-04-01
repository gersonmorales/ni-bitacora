<?php

  session_start(); 

  if(!isset($_SESSION['userid'])) {
      header("location:login.php");
  }
  require('include.php');

  $nombre = $_SESSION['usernombre'] . " " . $_SESSION['userapellido'];  
  
  $smarty->assign('sesion',$_SESSION);
  $smarty->assign('nombre',$nombre);
  $smarty->assign('title','Pagina principal');
  $smarty->display('index.tpl');
?>
