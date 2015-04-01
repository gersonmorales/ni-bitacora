{include file="header.tpl" title={$title} is_login='yes'}

{include file="navbar.tpl"}

<div class="container">
      <form action="{$faction}" method="post" class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        {if isset($msg)}
          <div class="alert alert-warning" role="alert">{$msg}</div>
        {/if}
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="login" name="login" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
 		<br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
</div>

{include file="footer.tpl"}  