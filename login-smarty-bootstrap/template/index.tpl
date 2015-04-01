{include file="header.tpl" title={$title}}  

<div class="container">

Su usuario ingreso correctamente.<br>
El valor de la session es:<br>
<pre>
  {foreach $sesion as $key => $value}
    {$key}: {$value}
  {/foreach}
</pre>
<br><a href="logout.php">Logout</a>
</div>

{include file="footer.tpl"}  