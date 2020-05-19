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

    <!-- ini mulai load datatable -->
     <link rel="stylesheet" href="{{url('asset/bower_components/font-awesome/css/font-awesome.min.css')}}">
     <!-- Ionicons -->
     <link rel="stylesheet" href="{{url('asset/bower_components/Ionicons/css/ionicons.min.css')}}">
       <!-- DataTables -->
     <link rel="stylesheet" href="{{url('asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css')}}"> 
     <!-- Theme style -->
     <link rel="stylesheet" href="{{url('asset/dist/css/AdminLTE.min.css')}}">
     <!-- AdminLTE Skins. Choose a skin from the css/skins
          folder instead of downloading all of them to reduce the load. -->
     <link rel="stylesheet" href="{{url('asset/dist/css/skins/_all-skins.min.css')}}">
     <script src="{{url('asset/bower_components/datatables.net/js/jquery.dataTables.min.js')}}"></script>
    <link rel="stylesheet" href="{{url('asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css')}}"> 
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

<section class="ftco-section" style="background-color: #e3d1bc">
        <br><br><br>
        <div class="container-fluid"> 
         <div class="card-body">
          <div class="table-responsive">
          <table  id="example2" class="table table-striped table-bordered table-hover text-center" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>Nama Pemesan</th>
                    <th>Nama Kamar</th>
                    <th>Nama Tamu</th>
                    <th>Check-in</th>
                    <th>Check-out</th>
                    <th>Total Harga</th>
                    <th>Upload Bukti</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
   {% for p in psn %} 
                  <tr>
                      <td>
                          {{ p.nama_pemesan }}
                      </td>
                      <td>
                          {{ p.id_hotel }}
                      </td>
                      <td>
                          {{ p.nama_tamu }}
                      </td>
                      <td>
                          {{ p.tgl_checkin }}
                      </td>
                      <td>
                          {{ p.tgl_checkout }}
                      </td>
                      <td>
                          {{ p.total_harga }}
                      </td>
                      <td>
                          Bukti wkwk
                      </td>
                      <td>
                         {% if p.status_bayar == 0 %}
                            <div class="col text-center">
                              <a href="#" class="button btn btn-sm btn-primary">Konfirmasi</a>
                            </div>
                         {% else %}
                             Confirmed
                        {% endif %}
                      </td>

            </tr>

  {% endfor %}
    
        </tbody>
          </table>
          </div></div></div>
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

          <script src="{{url('asset/bower_components/jquery/dist/jquery.min.js')}}"></script>
          <!-- Bootstrap 3.3.7 -->
          <script src="{{url('asset/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
          <!-- SlimScroll -->
          <script src="{{url('asset/bower_components/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
          <!-- FastClick -->
          <script src="{{url('asset/bower_components/fastclick/lib/fastclick.js')}}"></script>
          <!-- DataTables -->
          <script src="{{url('asset/bower_components/datatables.net/js/jquery.dataTables.min.js')}}"></script>
  <!--         <script src="../../asset/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script> -->
          <!-- AdminLTE App -->
          <script src="{{url('/asset/dist/js/adminlte.min.js')}}"></script>
          <!-- AdminLTE for demo purposes -->
          <script src="{{url('asset/dist/js/demo.js')}}"></script>
          <script>
          $.noConflict();
          jQuery( document ).ready(function( $ ) {
              $('#example2').DataTable();
            })
            
          </script>

          <style>
            .table-striped > tbody > tr:nth-child(2n+1) > td, .table-striped > tbody > tr:nth-child(2n+1) > th {
               background-color:#e4f2f5;

          </style>
    
  </body>
</html>