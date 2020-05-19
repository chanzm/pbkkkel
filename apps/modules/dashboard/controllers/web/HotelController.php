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
    public function initialize()
    {
        $this->view->setVar('auth',  $this->session->get('user'));
    }
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

   
	public function allhotelAction()
	{
		$gethotel = $this->db->query("SELECT * from hotel")->fetchAll();
		$this->view->setVars(
			['gethotel'=>$gethotel,
		]);
	    $this->view->pick('dashboard/allhotel');   
	}

	public function detailhotelAction($id)
	{
        $hotel = Hotel::findFirst("id_hotel = '$id'");
        $this->view->setVar('hotel',  $hotel);
		// $this->view->pick('dashboard/detailhotel');
		$this->view->pick('dashboard/detailhotel');
    }
    
    public function searchHotelAction()
    {
        $_isUser = $this->session->get('user');
        if($_isUser)
        {
            $this->response->redirect('dashawal');
        }
        $data['kota'] =$this->request->getPost('kota');
        $data['checkin'] = $this->request->getPost('checkin');
        $data['checkout'] = $this->request->getPost('checkout');
        $data['room'] = $this->request->getPost('room');
        $data['person'] = $this->request->getPost('person');
        $sql = "SELECT * from [hotel] WHERE total_kamar-kamar_terpakai > :kamar and kota_hotel=:kota";
        $param = 
        ['kamar' => $data['person'],
        'kota' => $data['kota']
        ];
        $gethotel = $this->db->fetchAll($sql, \Phalcon\Db\Enum::FETCH_ASSOC, $param);
        $this->view->setVars(
			['gethotel'=>$gethotel,
		]);
	    $this->view->pick('dashboard/allhotel'); 
    }

    public function hotelKotaAction()
    {
        $kamars = Hotel::find("kota_hotel = '$kota'");
        var_dump($kamars[0]);
        die();
    }

}