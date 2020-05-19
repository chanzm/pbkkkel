<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="icon" href="{{url('images/logo_fix.png')}}" type="image/x-icon" />
    <title>Jatim GoDay</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="{{url('css/open-iconic-bootstrap.min.css')}}" >
    <link rel="stylesheet" href="{{url('css/animate.css')}}">
    
    <link rel="stylesheet" href="{{url('css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{url('css/owl.theme.default.min.css')}}">
    <link rel="stylesheet" href="{{url('css/magnific-popup.css')}}">

    <link rel="stylesheet" href=" {{url('css/aos.css') }}">

    <link rel="stylesheet" href=" {{url('css/ionicons.min.css')}}">

    <link rel="stylesheet" href=" {{url('css/bootstrap-datepicker.css')}}">
    <link rel="stylesheet" href=" {{url('css/jquery.timepicker.css')}}">

    
    <link rel="stylesheet" href="{{url('css/flaticon.css')}}">
    <link rel="stylesheet" href="{{url('css/icomoon.css')}}">
    <link rel="stylesheet" href="{{url('css/style.css')}}">
  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.php"><img src="{{url('images/logoc.png')}}" type="image/x-icon"></a>
   <!-- 
   <link rel="icon" href="images/logo_fix.png" type="image/x-icon" /> -->
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>


            <div class="collapse navbar-collapse" id="ftco-nav">
    	        <ul class="navbar-nav ml-auto">
    	          <li class="nav-item active"><a href="dashawal" class="nav-link">Home</a></li>
    	          <li class="nav-item"><a href="allhotel" class="nav-link">Pesan Kamar</a></li>
    	          <li class="nav-item"><a href="listpesanan" class="nav-link">Pemesanan Saya</a></li>
                <li class="nav-item"><a href="restaurant.html" class="nav-link">{{auth['nama']}}</a>
                 <!--    <ul class="dropdown-menu" aria-labelledby="navbarDropdown" aria-haspopup="true">
                        <li class="nav-item"><a class="nav-link" href="blog.html" style="color: black">Logout</a></li>
                    </ul> -->
                </li>
                <li class="nav-item"><a href="logout" class="nav-link">Logout</a></li>

    	        </ul>
    	      </div>


	    </div>
	  </nav>
    <!-- END nav -->

    
    <!--================Blog Main Area =================-->
    <section class="ftco-section" style="background-color: #e3d1bc">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="single_blog_inner">
                        <div class="s_blog_main">
                            <div class="image">
                                <img class="img-fluid" src="{{url('images/room-1.jpg')}}" alt="">
                            </div>
                            <br>
                            <div class="blog_text">
                                <a href="#"><h4>Kamar 1</h4></a>
                                <div class="blog_author">
                                    <a href="#">Hotel : Nuria</a>
                                </div>
                                <p><strong>DESKRIPSI:</strong><br>{{hotel.deskripsi}} </p>
                               <p><strong>TOTAL HARGA:</strong><br>{{pemesanan.total_harga}} </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- buat form -->
                <div class="col-lg-4">
          <div class="sidebar-wrap bg-light ftco-animate">
            <h3 class="heading mb-4">Konfirmasi Data Pemesanan</h3>
            <form method="POST" action="{{url("addpemesanan/"~ hotel.id_hotel )}}">
              <div class="fields">
                <div class="form-group">
                  <label for="nama_pemesan">Nama Pemesan</label>
                  <input type="text" id="nama_pemesan" name="nama_pemesan" class="form-control" readonly value="{{pemesanan.nama_pemesan}}">
                </div>
                <div class="form-group">
                  <label for="nama_pemesan">Nama Tamu</label>
                  <input type="text" id="nama_tamu" name="nama_tamu" class="form-control" readonly value="{{pemesanan.nama_tamu}}">
                </div>
                <div class="form-group">
                  <label for="nama_pemesan">Email</label>
                  <input type="email" id="email" name="email" class="form-control" readonly value="{{pemesanan.email}}">
                </div>
                <div class="form-group">
                  <label for="nama_pemesan">Telepon</label>
                  <input type="text" id="telepon" name="telepon" class="form-control" readonly value="{{pemesanan.telepon}}">
                </div>
                <div class="form-group">
                  <label for="nama_pemesan">Nama Rekening</label>
                  <input type="text" id="nama_rekening" name="nama_rekening" class="form-control" readonly value="{{pemesanan.nama_rekening}}">
                </div>
                <div class="form-group">
                  <label for="nama_pemesan">Nomor Rekening</label>
                  <input type="text" id="nomor_rekening" name="nomor_rekening" class="form-control" readonly value="{{pemesanan.nomor_rekening}}">
                </div>
                <div class="form-group">
                  <label for="nama_pemesan">Check In</label>
                  <input type="text" id="tgl_checkin" name="tgl_checkin" class="form-control" readonly value="{{pemesanan.tgl_checkin}}">
                </div>
                <div class="form-group">
                  <label for="nama_pemesan">Check Out</label>
                  <input type="text" id="tgl_checkout" name="tgl_checkout" class="form-control" readonly value="{{pemesanan.tgl_checkout}}">
                </div>
                <div class="form-group">
                  <label for="nama_pemesan">Jumlah Kamar</label>
                  <input type="number" id="jumlah" name="jumlah" class="form-control" readonly value="{{pemesanan.jumlah_kamar}}">
                </div>
   
                <div class="form-group">
                  <input type="submit" value="Pesan Sekarang" class="btn btn-primary py-3 px-2">
                </div>
              </div>
             </form>
          </div>
          <!-- end form -->
                </div>
            </div>
        </div>
    </section>
    <!--================End Blog Main Area =================-->
   
    

    <footer style="background-color: black">
          <div class="col-md-12 text-center">
<br>
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | <i class="icon-heart color-danger" aria-hidden="true"></i>  <a href="#" target="_blank">Jatim GoDay</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

          </div>

    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="{{url('js/jquery.min.js')}}"></script>
  <script src="{{url('js/jquery-migrate-3.0.1.min.js')}}"></script>
  <script src="{{url('js/popper.min.js')}}"></script>
  <script src="{{url('js/bootstrap.min.js')}}"></script>
  <script src="{{url('js/jquery.easing.1.3.js')}}"></script>
  <script src="{{url('js/jquery.waypoints.min.js')}}"></script>
  <script src="{{url('js/jquery.stellar.min.js')}}"></script>
  <script src="{{url('js/owl.carousel.min.js')}}"></script>
  <script src="{{url('js/jquery.magnific-popup.min.js')}}"></script>
  <script src="{{url('js/aos.js')}}"></script>
  <script src="{{url('js/jquery.animateNumber.min.js')}}"></script>
  <script src="{{url('js/bootstrap-datepicker.js')}}"></script>
  <script src="{{url('js/jquery.timepicker.min.js')}}"></script>
  <script src="{{url('js/scrollax.min.js')}}"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="{{url('js/google-map.js')}}"></script>
  <script src="{{url('js/main.js')}}"></script>
    
  </body>
</html>