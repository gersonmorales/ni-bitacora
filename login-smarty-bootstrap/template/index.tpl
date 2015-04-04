{include file="header.tpl"}

{include file="navbar.tpl"}

<div class="container">

<form class="form-horizontal" action="{$faction}" method="post">
<fieldset>

<!-- Form Name -->
<legend>Registro de Atención</legend>

<!-- Select Basic -->
<div class="form-group">
  <input id="pro_id" name="pro_id" type="hidden" value="{$pro_id}">
  <label class="col-md-4 control-label" for="selectbasic">Paciente</label>

  <div class="col-md-4">
      <div class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-copy">
      </span></span>
      <select id="selectbasic" name="pac_id" class="form-control">
      {foreach $pacientes as $key => $value}
        {foreach $value as $k => $v}
          <option value="{$k}">{$v}</option>
        {/foreach}
      {/foreach}
      </select>    
      </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Fecha</label>  
  <div class="col-md-4">
    <div class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-calendar">
      </span></span>
      <input id="textinput" name="fecha" type="date" value="{$today}" class="form-control input-md" required>
    </div>
  </div>
</div>

<!-- Textarea -->
<!--
      <div class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-lock">
      </span></span>
      <input  id="password" name="password" type="password" placeholder="password" class="form-control">
    </div>
-->

<div class="form-group">
  <label class="col-md-4 control-label" for="textarea">Notas</label>
  <div class="col-md-4">
    <div class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-pencil">
      </span></span>
    <textarea class="form-control" id="textarea" name="obs" placeholder="Observaciones"></textarea>
    </div>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Registrar</button>
  </div>
</div>

</fieldset>
</form>

</div>

{include file="footer.tpl"}