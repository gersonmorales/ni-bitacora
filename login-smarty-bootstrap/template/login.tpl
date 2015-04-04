{include file="header.tpl" title={$title}}

{include file="navbar.tpl"}

<div class="container">
<form class="form-horizontal" action="{$faction}" method="post">
<fieldset>

<!-- Form Name -->
<legend>Sign In</legend>

<!-- Text input-->
<div class="form-group">
{if isset($msg)}
  <div class="alert alert-warning" role="alert">{$msg}</div>
{/if}
  <label class="col-md-4 control-label" for="login">E-Mail</label>  
  <div class="col-md-4">
    <div class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-user">
      </span></span>
      <input type="text" class="form-control" placeholder="email" id="login" name="login">
    </div>
  <!-- 
  <input id="login" name="login" type="text" placeholder="email" class="form-control input-md" required="required" autofocus>
  -->
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>
  <div class="col-md-4">
    <div class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-lock">
      </span></span>
      <input  id="password" name="password" type="password" placeholder="password" class="form-control">
    </div>
<!--
    <input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" required="required">
-->
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary" type="submit">Sign In</button>
  </div>
</div>

</fieldset>
</form>
</div>

{include file="footer.tpl"}  