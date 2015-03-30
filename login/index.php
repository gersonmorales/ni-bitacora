<?php

session_start(); 

if(!isset($_SESSION['userid'])) {
    header("location:login.php");
}
?>

Su usuario ingreso correctamente.<br>
El valor de la session es:<br>
<pre>
<?php print_r($_SESSION); ?>
</pre>
<br><a href="logout.php">Logout</a>


