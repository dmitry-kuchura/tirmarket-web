<?php
ini_set('display_errors', 'on');
error_reporting(E_ALL & ~E_NOTICE & ~E_STRICT & ~E_DEPRECATED);
header("Cache-Control: public");
header("Expires: " . date("r", time() + 3600));
header('Content-Type: text/html; charset=UTF-8');
ob_start();
define('MULTI_LANGUAGE', true);


@session_start();
define('DS', '/');
define('HOST', dirname(__FILE__));
define('APPLICATION', 'frontend');
define('PROFILER', false);
define('START_TIME', microtime(true));
define('START_MEMORY', memory_get_usage());

require_once 'loader.php';

Core\Route::factory()->execute();
\Profiler::view();