<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-03-31 19:24:37
         compiled from "template/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5155178055519bf350083d6-81394420%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '86b068ed4b0bcef21cbb1d1850e5db4d8ca894eb' => 
    array (
      0 => 'template/index.tpl',
      1 => 1427836185,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5155178055519bf350083d6-81394420',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5519bf35063163_57989079',
  'variables' => 
  array (
    'sesion' => 0,
    'key' => 0,
    'value' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5519bf35063163_57989079')) {function content_5519bf35063163_57989079($_smarty_tpl) {?>
Su usuario ingreso correctamente.<br>
El valor de la session es:<br>
<pre>
  <?php  $_smarty_tpl->tpl_vars['value'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['value']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['sesion']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['value']->key => $_smarty_tpl->tpl_vars['value']->value) {
$_smarty_tpl->tpl_vars['value']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['value']->key;
?>
    <?php echo $_smarty_tpl->tpl_vars['key']->value;?>
: <?php echo $_smarty_tpl->tpl_vars['value']->value;?>

  <?php } ?>
</pre>
<br><a href="logout.php">Logout</a>
<?php }} ?>
