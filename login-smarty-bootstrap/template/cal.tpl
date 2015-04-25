{include file="header.tpl"}

{include file="navbar.tpl"}

	<div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
        	<div class="form-group">
            <ul class="sidebar-nav">
 	           <li class="sidebar-brand">
                    <a href="#">&nbsp;</a>
                </li>
        	{foreach $pacientes as $key => $value}
				{foreach $value as $k => $v}
                	<li>
    				<a href="#">
    					<label class="checkbox-inline">
    						<input type="checkbox" checked="checked" 
    						name="pac_{$k}"	id="pac_{$k}"> {$v}
    					</label></a>
	                </li>
				{/foreach}
			{/foreach}
			</ul>
        	</div>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <legend>Reportes de Atención</legend>
                <div class="row">
                    <div class="col-lg-12">
                    	<div id='loading'>loading...</div>
                    	<div id='calendar'></div>

                    	<a href="#menu-toggle" class="btn btn-default"
                    	 id="menu-toggle"><span class="glyphicon glyphicon-filter" aria-hidden="true"></span> filtros</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Menu Toggle Script -->
    <script>

    $("#wrapper").toggleClass("toggled");

    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

{include file="footer.tpl"}