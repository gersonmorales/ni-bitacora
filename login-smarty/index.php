<?php

  session_start(); 

  if(!isset($_SESSION['userid'])) {
      header("location:login.php");
  }
  require('include.php');
  
  $smarty->assign('sesion',$_SESSION);
  $smarty->display('index.tpl');
?>
