<?php

  session_start(); 

  if(isset($_SESSION['userid'])) {
      header("location:index.php");
  }
  require('include.php');
  
  if ($_GET['error'] == 1) 
      $smarty->assign('msg','Su usuario es incorrecto, intente nuevamente.');
 
  $smarty->assign('faction','login-check.php');
  $smarty->display('login.tpl');

?>