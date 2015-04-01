<?php

session_start(); 
include_once("conexion.php");

/*
  Función verificar_login() --> Vamos a crear una función llamada 
  verificar_login, esta se encargara de hacer una consulta a la base de 
  datos para saber si el usuario ingresado es correcto o no.
*/
function verificar_login($user,$password,&$result)
{
    $sql = "SELECT * FROM profesional ";
    $sql.= " WHERE pro_email = '$user' and pro_password = '$password'";

    $rec = mysql_query($sql); 
    $count = 0; 
    
    while($row = mysql_fetch_object($rec)) { 
        $count++; 
	$result = $row; 
    }
    
    if($count == 1)
        return 1;
    else
        return 0;
}

/*
  Luego haremos una serie de condicionales que identificaran el momento en 
  el boton de login es presionado y cuando este sea presionado llamaremos 
  a la función verificar_login() pasandole los parámetros ingresados:
*/
print_r($_REQUEST);
exit();

if(!isset($_SESSION['userid'])) {
    if(isset($_POST['login'])) {
        if(verificar_login($_POST['user'],$_POST['password'],$result) == 1) {
            /* Si el login fue correcto, registramos la variable de sesión 
               y al mismo tiempo refrescamos la pagina index.php.
            */
            $_SESSION['userid'] = $result->pro_id;
            $_SESSION['usernombre'] = $result->pro_nombre;
            $_SESSION['userapellido'] = $result->pro_apellido1;
            header("location:index.php");
        }
    }
    header("location:login.php?error=1");
}
else {
    header("location:index.php");
}
?>
