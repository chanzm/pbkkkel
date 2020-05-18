<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Http\Request;
use Phalcon\Events\Manager as EventsManager;
use Phalcon\Init\Dashboard\Models\Hotel;
use Phalcon\Init\Dashboard\Models\Pemesanan;

class PemesananController extends Controller
{
    public function inputAction($idHotel)
    {
        $request = $this->request;
        $hotel = Hotel::findFirst("id_hotel='$idHotel'");
        if ($request->isPost()){
            $pemesanan = new Pemesanan();
            $pemesanan->id_hotel = $idHotel;
            // $pemesanan->tgl_checkin = $this->request->getPost('tgl_checkin');
            // $pemesanan->tgl_checkout = $this->request->getPost('tgl_checkout');
            $pemesanan->jumlah_kamar = $this->request->getPost('jumlah');
            $harga_kamar = (int)$hotel->harga_hotel;
            $total_harga = $this->request->getPost('jumlah') * $harga_kamar;
            $pemesanan->total_harga = $total_harga;
            $pemesanan->status_bayar = 0;
            $pemesanan->nama_pemesan = $this->request->getPost('nama');
            $pemesanan->email = $this->request->getPost('email');
            $pemesanan->telepon = $this->request->getPost('telepon');
            $pemesanan->nama_tamu = $this->request->getPost('tamu');
            $this->session->set('pemesanan', $pemesanan);
            $this->response->redirect('/konfirmasipemesanan');
        }

        $this->view->setVar('id', $idHotel);
        $this->view->pick('dashboard/inputpemesanan');
    }

    public function konfirmasiAction()
    {
        $pemesanan =  $this->session->get('pemesanan');
        $request = $this->request;
        if ($request->isPost()){
        }
        $this->view->setVar('pemesanan', $pemesanan);
        $this->view->pick('dashboard/konfirmasipemesanan');
    }

	public function listpesananAction()
	{
	    $this->view->pick('dashboard/pemesanansaya');   
	}
}