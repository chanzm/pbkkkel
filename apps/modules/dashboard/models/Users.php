<?php

namespace Phalcon\Init\Dashboard\Models;

use Phalcon\Mvc\Model;
use Phalcon\Init\Dashboard\Models\Logs;

class Users extends Model
{  
    public $id;
    public $nama;
    public $email;
    public $password;
}