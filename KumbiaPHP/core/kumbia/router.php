<?php
/**
 * KumbiaPHP web & app Framework
 *
 * LICENSE
 *
 * This source file is subject to the new BSD license that is bundled
 * with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://wiki.kumbiaphp.com/Licencia
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@kumbiaphp.com so we can send you a copy immediately.
 *
 * @category   Kumbia
 * @package    Router
 * @copyright  Copyright (c) 2005-2015 Kumbia Team (http://www.kumbiaphp.com)
 * @license    http://wiki.kumbiaphp.com/Licencia     New BSD License
 */

/**
 * Clase que Actua como router del Front-Controller
 *
 * Manejo de redirecciones de peticiones
 * Contiene información referente a la url de
 * la petición ( modudo, controlador, acción, parametros, etc )
 *
 * @category   Kumbia
 * @package    Router
 */
class Router {
	/**
	 * Array estatico con las variables del router
	 *
	 * @var array
	 */

	protected static $_vars = array(
		'method' => NULL, //Método usado GET, POST, ...
		'route' => NULL, //Ruta pasada en el GET
		'module' => NULL, //Nombre del módulo actual
		'controller' => 'index', //Nombre del controlador actual
		'action' => 'index', //Nombre de la acción actual, por defecto index
		'parameters' => array(), //Lista los parámetros adicionales de la URL
		'controller_path' => 'index',
		'default_path' => APP_PATH, //Path donde se encuentran los controller
		'suffix' => '_controller.php', //suffix for controler
		'dir' => 'controllers', //dir of controller
	);

	/**
	 * Indica si esta pendiente la ejecución de una ruta por parte del dispatcher
	 *
	 * @var boolean
	 */
	protected static $_routed = FALSE;

	/**
	 * Procesamiento basico del router
	 * @param string $url
	 * @return void
	 */
	public static function init($url) {
		// Se miran los parámetros por seguridad
		if (stripos($url, '/../') !== false) {
			throw new KumbiaException("Posible intento de hack en URL: '$url'");
		}
		// Si hay intento de hack TODO: añadir la ip y referer en el log
		self::$_vars['route'] = $url;
		//Método usado
		self::$_vars['method'] = $_SERVER['REQUEST_METHOD'];
	}

	/**
	 * Ejecuta una url
	 *
	 * @param string $url
	 * @return Controller
	 */
	public static function execute($url) {
		self::init($url);
		//Si config.ini tiene routes activados, mira si esta routed
		if (Config::get('config.application.routes')) {
			$url = self::_ifRouted($url);
		}
		// Descompone la url
		self::rewrite($url);
		// Despacha la ruta actual
		return self::dispatch(self::getController());
	}

	/**
	 * Busca en la tabla de entutamiento si hay una ruta en config/routes.ini
	 * para el controlador, accion, id actual
	 *
	 * @param string $url Url para enrutar
	 * @return string
	 */
	private static function _ifRouted($url) {
		$routes = Config::read('routes');
		$routes = $routes['routes'];

		// Si existe una ruta exacta la devuelve
		if (isset($routes[$url])) {
			return $routes[$url];
		}

		// Si existe una ruta con el comodin * crea la nueva ruta
		foreach ($routes as $key => $val) {
			if ($key == '/*') {
				return rtrim($val, '*') . $url;
			}

			if (strripos($key, '*', -1)) {
				$key = rtrim($key, '*');
				if (strncmp($url, $key, strlen($key)) == 0) {
					return str_replace($key, rtrim($val, '*'), $url);
				}
			}
		}

		return $url;
	}

	/**
	 * Toma $url y la descompone en (modulo), controlador, accion y argumentos
	 *
	 * @param string $url
	 */
	static function rewrite($url) {
		//Valor por defecto
		if ($url == '/') {
			return;
		}

		//Se limpia la url, en caso de que la hallan escrito con el último parámetro sin valor, es decir controller/action/
		// Obtiene y asigna todos los parámetros de la url
		$url_items = explode('/', trim($url, '/'));

		// El primer parametro de la url es un módulo?
		if (is_dir(APP_PATH . "controllers/$url_items[0]")) {
			self::$_vars['module'] = $url_items[0];

			// Si no hay mas parametros sale
			if (next($url_items) === false) {
				self::$_vars['controller_path'] = "$url_items[0]/index";
				return;
			}
		}

		// Controlador
		self::$_vars['controller'] = current($url_items);
		self::$_vars['controller_path'] = (self::$_vars['module']) ? "$url_items[0]/$url_items[1]" : current($url_items);

		// Si no hay mas parametros sale
		if (next($url_items) === false) {
			return;
		}

		// Acción
		self::$_vars['action'] = current($url_items);

		// Si no hay mas parametros sale
		if (next($url_items) === false) {
			return;
		}

		// Crea los parámetros y los pasa
		self::$_vars['parameters'] = array_slice($url_items, key($url_items));
	}

	/**
	 * Carga y devuelve una instancia del controllador
	 */
	static function getController() {
		// Extrae las variables para manipularlas facilmente
		extract(self::$_vars, EXTR_OVERWRITE);
		if (!include_once "$default_path{$dir}/$controller_path{$suffix}") {
			throw new KumbiaException(null, 'no_controller');
		}
		//Asigna el controlador activo
		$app_controller = Util::camelcase($controller) . 'Controller';
		return new $app_controller(self::$_vars);
	}

	/**
	 * Realiza el dispatch de la ruta actual
	 *
	 * @return Controller
	 */
	static function dispatch($cont) {
		// Se ejecutan los filtros initialize y before
		if ($cont->k_callback(true) === false) {
			return $cont;
		}

		//Obteniendo el metodo
		try {
			$reflectionMethod = new ReflectionMethod($cont, $cont->action_name);
		} catch (ReflectionException $e) {
			throw new KumbiaException(null, 'no_action'); //TODO: enviar a un método del controller
		}

		//k_callback y __constructor metodo reservado
		if ($cont->action_name == 'k_callback' || $reflectionMethod->isConstructor()) {
			throw new KumbiaException('Esta intentando ejecutar un método reservado de KumbiaPHP');
		}

		//se verifica que los parametros que recibe
		//la action sea la cantidad correcta
		$num_params = count($cont->parameters);
		if ($cont->limit_params && ($num_params < $reflectionMethod->getNumberOfRequiredParameters() ||
			$num_params > $reflectionMethod->getNumberOfParameters())) {
			throw new KumbiaException(NULL, 'num_params');
		}

		try {
			$reflectionMethod->invokeArgs($cont, $cont->parameters);
		} catch (ReflectionException $e) {
			throw new KumbiaException(null, 'no_action'); //TODO: mejor no_public
		}

		//Corre los filtros after y finalize
		$cont->k_callback();

		//Si esta routed internamente volver a ejecutar
		if (self::$_routed) {
			self::$_routed = FALSE;
			return self::dispatch(self::getController()); // Vuelve a ejecutar el dispatcher
		}

		return $cont;
	}

	/**
	 * Envia el valor de un atributo o el array con todos los atributos y sus valores del router
	 * Mirar el atributo vars del router
	 * ej.
	 * <code>Router::get()</code>
	 *
	 * ej.
	 * <code>Router::get('controller')</code>
	 *
	 * @param string $var (opcional) un atributo: route, module, controller, action, parameters o routed
	 * @return array|string con el valor del atributo
	 */
	public static function get($var = null) {
		if ($var) {
			return self::$_vars[$var];
		} else {
			return self::$_vars;
		}
	}

	/**
	 * Redirecciona la ejecución internamente o externamente con un routes propio
	 *
	 * @param array $params array de $_vars (móddulo, controller, action, params, ...)
	 * @param boolean $intern si la redirección es interna
	 */
	public static function to($params, $intern = FALSE) {
		if ($intern) {
			self::$_routed = TRUE;
		}

		self::$_vars = $params + self::$_vars;
	}
}