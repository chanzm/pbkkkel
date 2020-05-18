<?php

$namespace =  'Phalcon\Init\Dashboard\Controllers\Web';

$router->addGet('/register', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Dashboard',
    'action' => 'register'
]);

$router->addGet('/dashboard', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Dashboard',
    'action' => 'dashboard'
]);

$router->addGet('/coba', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Dashboard',
    'action' => 'coba'
]);

$router->addGet('/hotel', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'hotel',
    'action' => 'index'
]);

$router->addGet('/detil/:params', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'hotel',
    'action' => 'detilKamar',
    'params' =>1
]);

$router->addGet('/hotelkota/:params', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'hotel',
    'action' => 'hotelKota',
    'params' =>1
]);

$router->add('/inputpemesanan/:params', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'pemesanan',
    'action' => 'input',
    'params' =>1
]);



return $router;