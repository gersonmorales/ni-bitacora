<?php

  // datos para la conexion a mysql

  define('DB_SERVER','localhost');
  define('DB_NAME','rad');
  define('DB_USER','raduser');
  define('DB_PASS','MyRad');

  $con = mysql_connect(DB_SERVER,DB_USER,DB_PASS) or 
          die('No se pudo conectar: ' . mysql_error());
  mysql_select_db(DB_NAME,$con);
?>
