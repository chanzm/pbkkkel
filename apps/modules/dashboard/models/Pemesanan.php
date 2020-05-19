<?php

namespace Phalcon\Init\Dashboard\Models;

use Phalcon\Mvc\Model;
use Phalcon\Init\Dashboard\Models\Logs;

class Pemesanan extends Model
{  
    public $id_pemesanan;
    public $id_user;
    public $id_hotel;
    public $tgl_checkin;
    public $tgl_checkout;
    public $jumlah_kamar;
    public $total_harga;
    public $status_bayar;
    public $nama_pemesan;
    public $email;
    public $telepon;
    public $nama_tamu;
    public $nama_rekening;
    public $nomor_rekening;
}