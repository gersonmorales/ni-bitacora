{include file="header.tpl"}

{include file="navbar.tpl"}

<div class="container">

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Registro de Atención</legend>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="selectbasic">Paciente</label>
  <div class="col-md-4">
    <select id="selectbasic" name="selectbasic" class="form-control">
	{foreach $pacientes as $key => $value}
		{foreach $value as $k => $v}
	      <option value="{$k}">{$v}</option>
    	{/foreach}
	{/foreach}
    </select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Fecha</label>  
  <div class="col-md-4">
  <input id="textinput" name="textinput" type="date" value="{$today}" class="form-control input-md" required>
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="textarea">Notas</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="textarea" name="textarea" placeholder="Observaciones"></textarea>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Button</button>
  </div>
</div>

</fieldset>
</form>

</div>

{include file="footer.tpl"}  