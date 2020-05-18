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

$router->addGet('/dashawal', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Dashboard',
    'action' => 'dashawal'
]
);

$router->addGet('/logout', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'User',
    'action' => 'logout'
]
);

$router->addGet('/allhotel', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Hotel',
    'action' => 'allhotel'
]
);

$router->addGet('/detailhotel', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Hotel',
    'action' => 'detailhotel'
]
);

$router->addGet('/listpesanan', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Pemesanan',
    'action' => 'listpesanan'
]
);

return $router;