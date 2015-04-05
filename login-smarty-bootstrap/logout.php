<?php

    session_start();
    require('include.php');
    include_once('conexion.php');

    $ipcli = get_client_ip_server();
    $pro_id = $_SESSION['userid'];

    $sql = "INSERT INTO log (log_datetime, pro_id, log_ip, log_action) ";
    $sql.= "VALUES (NOW(), $pro_id, '$ipcli', 'LOGOUT')";
    mysql_query($sql);
    #error_log("[SQL] $sql",0);

    session_destroy();
 
    header('location: index.php');
?>
