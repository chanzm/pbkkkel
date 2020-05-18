<html>
    <div class="single-post">
        <h3 class="mb-30">Konfirmasi Pemesanan</h3>
        <form method="POST" action="{{url("pemesanan/input/"~ auth['id']~ "/" ~hotel['id_hotel'])}}">
            <div class="mt-10" style="margin-bottom: 30px;">
                <label for="nama">Nama Pemesan</label>
                <input type="text" name="nama" readonly value="{{data['nama_pemesan']}}"  class="single-input">
            </div>
            <div class="mt-10" style="margin-bottom: 30px;">
                <label for="telepon">Telepon</label>
                <input type="tel" name="telepon" readonly value="{{data['telepon']}}"  class="single-input" >
            </div>
            <div class="mt-10" style="margin-bottom: 30px;">
                <label for="email">Email</label>
                <input type="email" name="email" readonly value="{{data['email']}}"  class="single-input">
            </div>
            <div class="mt-10" style="margin-bottom: 30px;">
                <label for="tamu">Nama Tamu</label>
                <input type="text" name="tamu" readonly value="{{data['nama_tamu']}}"  class="single-input">
            </div>
            <div>
                <button type="submit" class="genric-btn primary radius">Konfirmasi Pemesanan dan Lakukan Pembayaran</button>
            </div>
        </form>
     </div>
</html>