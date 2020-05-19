<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="icon" href="images/logo_fix.png" type="image/x-icon" />
    <title>Jatim GoDay</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="{{url('css/open-iconic-bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{url('css/animate.css')}}">
    
    <link rel="stylesheet" href="{{url('css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{url('css/owl.theme.default.min.css')}}">
    <link rel="stylesheet" href="{{url('css/magnific-popup.css')}}">

    <link rel="stylesheet" href="{{url('css/aos.css')}}">

    <link rel="stylesheet" href="{{url('css/ionicons.min.css')}}">

    <link rel="stylesheet" href="{{url('css/bootstrap-datepicker.css')}}">
    <link rel="stylesheet" href="{{url('css/jquery.timepicker.css')}}">

    
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
                <li class="nav-item"><a href="restaurant.html" class="nav-link">Hi, User</a>
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

      <section class="ftco-section" style="background-color: #e3d1bc">
          <div class="container">
              <div class="row">
                  <div class="col-lg-12">
                      <div class="single_blog_inner">
                        <br><br>
                          <h3 class="text-center">Silahkan mengupload bukti pembayaran dalam waktu 1 x 24 jam</h3>
                        <br><br>

                          <div class="text-center">
                             <form method="POST" action="{{url("uploadbukti/"~ id )}}" enctype="multipart/form-data">
                               <div class="fields">
                                 <input type = "file" name="foto_bukti_bayar"> <br><br><br>
                                 <button type="submit"class="btn btn-lg py-3 px-4 btn-primary">Upload</button>
                               </div>
                              </form>
                          </div>
                      </div>
                  </div>
            
                  </div>
              </div>
          </div>
<br><br><br><br>
      </section>




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