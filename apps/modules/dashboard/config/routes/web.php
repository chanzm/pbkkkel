<?php

$namespace =  'Phalcon\Init\Dashboard\Controllers\Web';

$router->addGet('/dashboard', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Dashboard',
    'action' => 'dashboard'
]);

$router->addGet('/register', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'User',
    'action' => 'register'
]);

//kalo store brati addpost
$router->addPost('/register', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'User',
    'action' => 'storeregister'
]);

$router->addGet('/login', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'User',
    'action' => 'login'
]);

//kalo store brati addpost
$router->addPost('/login', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'User',
    'action' => 'storelogin'
]);

$router->addGet('/dashboardawal', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Dashboard',
    'action' => 'dashboardawal'
]);

$router->addGet('/logout', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'User',
    'action' => 'logout'
]
);

return $router;