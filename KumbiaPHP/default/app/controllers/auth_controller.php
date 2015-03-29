<?php
class AuthController extends AppController
{
	public function login()
	{
	// Si se loguea se redirecciona al módulo de cliente 
		if(Load::model('usuario')->login()) 
		{
			Router::toAction('usuario/panel');
		}
	}

	public function logout()
	{
	// Termina la sesion
		Load::model('usuario')->logout();
		Router::toAction('login');
	}
}
?>