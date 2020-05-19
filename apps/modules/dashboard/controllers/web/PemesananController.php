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
    public function initialize()
    {
        $this->view->setVar('auth',  $this->session->get('user'));
    }

    public function inputAction($idHotel)
    {
        $request = $this->request;
        $hotel = Hotel::findFirst("id_hotel='$idHotel'");
        if ($request->isPost()){
            $pemesanan = new Pemesanan();
            $pemesanan->id_hotel = $idHotel;
            $pemesanan->tgl_checkin = $this->request->getPost('tgl_checkin');
            $pemesanan->tgl_checkout = $this->request->getPost('tgl_checkout');
            $pemesanan->jumlah_kamar = $this->request->getPost('jumlah');
            $harga_kamar = (int)$hotel->harga_hotel;
            $total_harga = (int)$this->request->getPost('jumlah') * $harga_kamar;
            $pemesanan->total_harga = $total_harga;
            $pemesanan->status_bayar = 0;
            $pemesanan->nama_pemesan = $this->request->getPost('nama_pemesan');
            $pemesanan->email = $this->request->getPost('email');
            $pemesanan->telepon = $this->request->getPost('telepon');
            $pemesanan->nama_tamu = $this->request->getPost('nama_tamu');
            $pemesanan->nama_rekening = $this->request->getPost('nama_rekening');
            $pemesanan->nomor_rekening = $this->request->getPost('nomor_rekening');
            $this->session->set('pemesanan', $pemesanan);
            $this->response->redirect('/konfirmasipemesanan/'.$idHotel);
        }

        $this->view->setVar('id', $idHotel);
        $this->view->pick('dashboard/inputpemesanan');
    }

    public function konfirmasiAction($idHotel)
    {
        $pemesanan =  $this->session->get('pemesanan');
        $request = $this->request;
        $hotel = Hotel::findFirst("id_hotel='$idHotel'");
        if ($request->isPost()){
        }
        $this->view->setVar('hotel',  $hotel);
        $this->view->setVar('pemesanan', $pemesanan);
        $this->view->pick('dashboard/konfirmasihotel');
    }

    public function addPemesananAction($idHotel)
    {
        $pemesanan = $this->session->get('pemesanan');
        $pemesanan->id_user = $this->session->get('user')['id'];
        $pemesanan->save();
        $this->flashSession->success("Pemesanan telah ditambahkan ke pemesanan anda. Jangan lupa membayar");
        $this->session->remove('pemesanan');
        $this->response->redirect('dashawal');
    }

	public function listpesananAction()
	{
	    $this->view->pick('dashboard/pemesanansaya');   
	}
}