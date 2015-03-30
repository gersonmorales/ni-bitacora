<?php

session_start(); 

if(isset($_SESSION['userid'])) {
    header("location:index.php");
}
?>
<?php 
if ($_GET['error'] == 1) 
    echo '<div class="error">Su usuario es incorrecto, intente nuevamente.</div>';
?>
<form action="login-check.php" method="post" class="login">

    <div><label>Username</label><input name="user" type="text" ></div>

    <div><label>Password</label><input name="password" type="password"></div>

    <div><input name="login" type="submit" value="login"></div>

</form>
