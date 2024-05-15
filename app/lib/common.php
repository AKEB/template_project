<?php

require_once("config.php");
require_once("constant.php");

require_once("vendor/autoload.php");

function project_autoloader($class) {
	$filename = SERVER_ROOT . '/lib/' . str_replace('\\', '/', $class) . '.php';
	if (file_exists($filename)) {
		require_once($filename);
	}
}
spl_autoload_register('project_autoloader', true, true);
