<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">NeuroInclusiva</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      {if isset($nombre)}
      <ul class="nav navbar-nav navbar-right">
      	{if $page eq 'main'}
        <li class="active"><a href="#">Registro de Atención<span class="sr-only">(current)</span></a></li>
        {else}
        <li><a href="index.php">Registro de Atención</a></li>
        {/if}

        <li class="dropdown">
       	{if $page eq 'repo'}
        <li class="dropdown active">
        	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Reportes <span class="caret"></span></a>
		{else}
        <li class="dropdown">
        	<a href="cal.php" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Reportes <span class="caret"></span></a>
        {/if}
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Lista</a></li>
            <li><a href="cal.php">Calendario</a></li>
          </ul>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{$nombre} <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li class="divider"></li>
            <li><a href="logout.php">Logout</a></li>
          </ul>
        </li>
      </ul>
      {/if}
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
