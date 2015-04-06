<?php

  session_start(); 

  if(!isset($_SESSION['userid'])) {
      header("location:login.php");
  }
  require('include.php');
  include_once('conexion.php');

  /* Primero comprobamos que ningún campo esté vacío y que todos los campos
     existan.
   */

  $error = 0;
  if(isset($_POST['fecha'])  && !empty($_POST['fecha']) &&
     isset($_POST['pro_id']) && !empty($_POST['pro_id']) &&
     isset($_POST['pac_id']) && !empty($_POST['pac_id'])) {

  /* Registro de actividad */
  $ipcli = get_client_ip_server();
  $pro_id = $_SESSION['userid'];

  $sql = "INSERT INTO log (log_datetime, pro_id, log_ip, log_action) ";
  $sql.= "VALUES (NOW(), $pro_id, '$ipcli', 'REGISTER')";
  mysql_query($sql);
  #error_log("[SQL] $sql",0);

	/* Con esta sentencia SQL insertaremos los datos en la base de datos
	 */
	$sql = "INSERT INTO atencion (ate_fecha, ate_obs, pac_id, pro_id) ";
	$sql.= "VALUES ('".mysql_real_escape_string($_POST['fecha'])."', ";
	$sql.= " '".mysql_real_escape_string($_POST['obs'])."', ";
	$sql.= " '".mysql_real_escape_string($_POST['pac_id'])."', ";
	$sql.= " '".mysql_real_escape_string($_POST['pro_id'])."')";
	mysql_query($sql);

	// Ahora comprobaremos que todo ha ido correctamente
	$my_error = mysql_error();

	if(!empty($my_error)) 
		$error = "Ha habido un error al insertar los valores. $my_error";

  } else {
    /* Registro de actividad */
    $ipcli = get_client_ip_server();
    $pro_id = $_SESSION['userid'];

    $sql = "INSERT INTO log (log_datetime, pro_id, log_ip, log_action) ";
    $sql.= "VALUES (NOW(), $pro_id, '$ipcli', 'REGISTER ERROR')";
    mysql_query($sql);
    #error_log("[SQL] $sql",0);

  	$error = "Error, no ha introducido todos los datos";
  }

  $nombre = $_SESSION['usernombre']." ".$_SESSION['userapellido'];

  if ($error != 0)
    $smarty->assign('error',$error);
  $smarty->assign('nombre',$nombre);
  $smarty->assign('title','Pagina principal');
  $smarty->display('registrar.tpl');

?>