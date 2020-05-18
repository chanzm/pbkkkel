<?php

namespace Phalcon\Init\Dashboard\Models;

use Phalcon\Mvc\Model;
use Phalcon\Init\Dashboard\Models\Logs;

class Hotel extends Model
{  
    public $id_hotel;
    public $nama_hotel;
    public $alamat_hotel;
    public $kota_hotel;
    public $deskripsi;
    public $total_kamar;
    public $kamar_terpakai;
    public $harga_hotel;
    public $foto_hotel;
}