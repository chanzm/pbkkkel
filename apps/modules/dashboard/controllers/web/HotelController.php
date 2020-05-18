<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Http\Request;
use Phalcon\Events\Manager as EventsManager;
use Phalcon\Init\Dashboard\Models\Hotel;

class HotelController extends Controller
{
    public function indexAction()
    {
        $kamars = Hotel::find();
        $this->view->kamars = $kamars;
    }

    public function detilKamarAction($id)
    {
        $kamar = Hotel::findFirst("id_hotel = '$id'");
        var_dump($kamar);
        $this->view->kamar = $kamar;
    }

    public function hotelKotaAction($kota)
    {
        $kamars = Hotel::find("kota_hotel = '$kota'");
        var_dump($kamars[0]);
        die();
    }

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