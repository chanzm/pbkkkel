<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Http\Request;
use Phalcon\Events\Manager as EventsManager;

class HotelController extends Controller
{
	public function allhotelAction()
	{
		$gethotel = $this->db->query("SELECT * from hotel")->fetchAll();
		$this->view->setVars(
			['gethotel'=>$gethotel,
		]);
	    $this->view->pick('dashboard/allhotel');   
	}

	public function detailhotelAction()
	{
		// $this->view->pick('dashboard/detailhotel');
		$this->view->pick('dashboard/detailhotel');
	}
}