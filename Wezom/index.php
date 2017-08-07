<?php
ini_set('display_errors', 'off');
error_reporting(E_ALL & ~E_NOTICE & ~E_STRICT & ~E_DEPRECATED);
header("Cache-Control: public");
header("Expires: " . date("r", time() + 3600));
header('Content-Type: text/html; charset=UTF-8');
ob_start();
@session_start();

define('DS', '/');
define('HOST', dirname(dirname(__FILE__)));
define('MULTI_LANGUAGE', FALSE);
define('APPLICATION', 'backend');
define('PROFILER', FALSE);
define('START_TIME', microtime(TRUE));
define('START_MEMORY', memory_get_usage());

require_once HOST . DS . 'loader.php';

Core\Route::factory()->execute();
\Profiler::view();
