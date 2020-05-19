<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="icon" href="images/logo_fix.png" type="image/x-icon" />
    <title>Jatim GoDay</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <a class="navbar-brand" href="index.php"><img src="images/logoc.png" type="image/x-icon"></a>
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

    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background: linear-gradient(rgba(87, 48, 16, 0.6), rgba(30, 67, 86, 0.6)),url(images/bgbg.jpg)no-repeat;">
        <div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-12 ftco-animate text-center">
            <div class="text mb-5 pb-3">
              <h1 class="mb-3">Jatim GoDay</h1>
              <h2>Hotels &amp; Resorts</h2>
            </div>
          </div>
        </div>
        </div>
      </div>

      <div class="slider-item" style="background: linear-gradient(rgba(87, 48, 16, 0.6), rgba(30, 67, 86, 0.6)),url(images/room-1_dpn.jpg)no-repeat;">
        <div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-12 ftco-animate text-center">
            <div class="text mb-5 pb-3">
              <h1 class="mb-3">Jatim GoDay</h1>
              <h2>Join With Us</h2>
            </div>
          </div>
        </div>
        </div>
      </div>
    </section>

        <section class="ftco-booking">
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <form method="POST" action="{{url("search/")}}"  class="booking-form">
                  <div class="row">

                    <div class="col-md-2 d-flex">
                      <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                        <div class="wrap">
                          <label for="checkin">Check-in Date</label>
                          <input name="checkin" type="text" class="form-control checkin_date" placeholder="Check-in date">
                        </div>
                      </div>
                    </div>
                    <div class="col-md-2 d-flex">
                      <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                        <div class="wrap">
                          <label for="checkout">Check-out Date</label>
                          <input name="checkout" type="text" class="form-control checkout_date" placeholder="Check-out date">
                      </div>
                      </div>
                    </div>
                    <div class="col-md-2 d-flex">
                      <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                        <div class="wrap">
                          <label for="person">Total Person</label>
                          <input name="person" type="number" class="form-control" placeholder="Person">
                        </div>
                      </div>
                    </div>
                    <div class="col-md d-flex">
                      <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                        <div class="wrap">
                          <label for="room">Room</label>
                          <div class="form-field">
                            <div class="select-wrap">
                             <!--  <div class="icon"><span class="ion-ios-arrow-down"></span></div> -->
                              <select name="room" id="" class="form-control form-control input-md class="multiple" multiple="multiple"">
                                <option value="suite">Suite</option>
                                <option value="suite">Family Room</option>
                                <option value="suite">Deluxe Room</option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md d-flex">
                      <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                        <div class="wrap">
                          <label for="kota">Kota</label>
                          <div class="form-field">
                            <div class="select-wrap">
                          <!--     <div class="icon"><span class="ion-ios-arrow-down"></span></div> -->
                              <select name="kota" id="kota" class="form-control input-md" class="multiple" multiple="multiple">
                                <option value="surabaya">Surabaya</option>
                                <option value="malang">Malang</option>
                                <option value="banyuwangi">Banyuwangi</option>
                                <option value="pacitan">Pacitan</option>
                                <option value="kediri">Kediri</option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md d-flex">
                      <div class="form-group d-flex align-self-stretch">
                        <input type="submit" value="Check Availability" class="btn btn-primary py-3 px-4 align-self-stretch">
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
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


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>