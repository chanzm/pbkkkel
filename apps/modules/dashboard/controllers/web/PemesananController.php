<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Init\Dashboard\Models\Hotel;
use Phalcon\Http\Request;
use Phalcon\Events\Manager as EventsManager;

class PemesananController extends Controller
{
	public function listpesananAction()
	{
	    $this->view->pick('dashboard/pemesanansaya');   
	}
}