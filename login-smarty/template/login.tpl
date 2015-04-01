
{if isset($msg)}
    {* do something *}
    <h2>{$msg}</h2>
{/if}
<form action="{$faction}" method="post" class="login">

    <div><label>Username</label><input name="user" type="text" ></div>

    <div><label>Password</label><input name="password" type="password"></div>

    <div><input name="login" type="submit" value="login"></div>

</form>
