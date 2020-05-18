<html>
<div class="single-post">
    <h3 class="mb-30">Data Pesanan</h3>
    <form method="POST" action="{{url("inputpemesanan/"~ id )}}">
        <div class="mt-10" style="margin-bottom: 30px;">
            <label for="nama">Nama Pemesan</label>
            <input type="text" name="nama" placeholder="Nama Pemesan"
                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nama Pemesan'" required
                class="single-input">
        </div>
        <div class="mt-10" style="margin-bottom: 30px;">
            <label for="telepon">Telepon</label>
            <input type="tel" name="telepon" placeholder="Telepon"
                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Telepon'" required
                class="single-input">
        </div>
        <div class="mt-10" style="margin-bottom: 30px;">
            <label for="email">Email</label>
            <input type="email" name="email" placeholder="Email"
                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'" required
                class="single-input">
        </div>
        <div class="mt-10" style="margin-bottom: 30px;">
            <label for="tamu">Nama Tamu</label>
            <input type="text" name="tamu" placeholder="Nama Tamu"
                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nama Tamu'" required
                class="single-input">
        </div>
        <div class="mt-10" style="margin-bottom: 30px;">
            <label for="tamu">Jumlah Kamar</label>
            <input type="number" name="jumlah" placeholder="Jumlah Kamar"
                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Jumlah Kamar'" required
                class="single-input">
        </div>
        <div>
            <button type="submit" class="genric-btn primary radius">Lanjutkan Pemesanan</button>
        </div>
    </form>
 </div>
</html>