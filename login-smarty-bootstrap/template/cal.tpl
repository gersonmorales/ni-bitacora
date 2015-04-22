{include file="header.tpl"}

{include file="navbar.tpl"}

<div class="container">

<div class="form-group">
{foreach $pacientes as $key => $value}
	{foreach $value as $k => $v}
    <label class="checkbox-inline">
  		<input type="checkbox" checked="checked" name="pac_{$k}" 
  		id="pac_{$k}"> {$v}
	</label>
	{/foreach}
{/foreach}
</div>

<div id='loading'>loading...</div>
<div id='calendar'></div>

</div>

{include file="footer.tpl"}