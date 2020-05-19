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

$router->add('/konfirmasipemesanan/:params', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'pemesanan',
    'action' => 'konfirmasi',
    'params' =>1
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

$router->addGet('/detailhotel/:params', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Hotel',
    'action' => 'detailhotel',
    'params' =>1
]
);

$router->addGet('/listpesanan', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Pemesanan',
    'action' => 'listpesanan'
]
);

$router->addPost('/addpemesanan/:params', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Pemesanan',
    'action' => 'addPemesanan',
    'params' => 1
]
);

return $router;