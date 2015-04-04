{include file="header.tpl"}

{include file="navbar.tpl"}
<div class="container">
{if isset($error)}
  <div class="alert alert-danger" role="alert">{$error}</div>

{else}

  <div class="alert alert-info" role="alert">
  	<span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>
  	Información registrada
  </div>

{/if}
{$ipcliente}
</div>
{include file="footer.tpl"}