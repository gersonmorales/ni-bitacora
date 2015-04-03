{include file="header.tpl"}

{include file="navbar.tpl"}

{if isset($error)}
  <div class="alert alert-danger" role="alert">{$error}</div>
{/if}
Hola
{$sql}


{include file="footer.tpl"}