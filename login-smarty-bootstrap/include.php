<?php 
  require('lib/Smarty/Smarty.class.php');
  require('lib/mis_funciones.php');
  
  $smarty = new Smarty;
  $smarty->template_dir = 'template/';
  $smarty->compile_dir = 'templates_c/';
  $smarty->config_dir = 'configs/';
  $smarty->cache_dir = 'cache/';
?>
