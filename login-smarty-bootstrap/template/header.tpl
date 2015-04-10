<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    {if isset($title)}
    <title>{$title}</title>
    {/if}
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>

    {if isset($cal)}
    <link rel='stylesheet' href='css/fullcalendar.css' />
    <link rel='stylesheet' href='css/fullcalendar.print.css' media='print' />

    <script src='js/moment.min.js'></script>
    <script src='js/fullcalendar.min.js'></script>
    {/if}

    {if isset($cal)}
      {include file="cal_head.tpl"}
    {/if}

  </head>
  <body>