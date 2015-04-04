<?php

    require('include.php');
    include_once('conexion.php');

    $ipcli = get_client_ip_server();

    $sql = "INSERT INTO log (log_datetime, log_ip, log_action) ";
    $sql.= "VALUES (NOW(), $ipcli, 'LOGOUT'";
    mysql_query($sql);

    session_start();
    session_destroy();
 
    header('location: index.php');
?>
