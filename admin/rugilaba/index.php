<?php
include '../../config.php';

$page_admin = 'rugilaba';

if (isset($_COOKIE['login_admin'])) {
    if ($akun_adm == 'false') {
        header("location: " . $url . "system/admin/logout");
    }
} else {
    header("location: " . $url . "admin/login/");
}

$transaksi = $server->query("SELECT * FROM `invoice`, `iklan`, `kategori` WHERE `invoice`.id_iklan = `iklan`.id AND `iklan`.id_kategori = `kategori`.id");
$jumlah_transaksi = mysqli_num_rows($transaksi);

$transaksi_berhasil = $server->query("SELECT sum(`invoice`.harga_i ) as 'total_pemasukan' FROM `invoice`, `iklan`, `kategori` WHERE `invoice`.id_iklan = `iklan`.id AND `iklan`.id_kategori = `kategori`.id AND `invoice`.tipe_progress = 'Selesai'");
$jumlah_transaksi_berhasil = mysqli_fetch_assoc($transaksi_berhasil);

$transaksi_semua = $server->query("SELECT sum(`invoice`.harga_i) as 'total_pengeluaran_semua' FROM `invoice`, `iklan`, `kategori` WHERE `invoice`.id_iklan = `iklan`.id AND `iklan`.id_kategori = `kategori`.id AND `invoice`.tipe_progress = 'Selesai'");
$jumlah_transaksi_semua = mysqli_fetch_assoc($transaksi_semua);

$transaksi_dikirim = $server->query("SELECT sum(`invoice`.harga_i) as 'total_pengeluaran_dikirim' FROM `invoice`, `iklan`, `kategori` WHERE `invoice`.id_iklan = `iklan`.id AND `iklan`.id_kategori = `kategori`.id AND `invoice`.tipe_progress = 'Dibatalkan' AND `invoice`.waktu_dikirim != ''");
$jumlah_transaksi_dikirim = mysqli_fetch_assoc($transaksi_dikirim);

$laba = $server->query("SELECT sum(`pengeluaran`) as 'total_pengeluaran_dikirim' FROM `pengeluaranlabarugi`");
$rugi = mysqli_fetch_assoc($laba);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Laporan Laba, Rugi, Pemasukan dan Pengeluaran</title>
    <link rel="icon" href="../../assets/icons/<?php echo $logo; ?>" type="image/svg">
    <link rel="stylesheet" href="../../assets/css/admin/labarugi/index.css">
</head>

<body>
    <div class="tambah_pengeluaran_form" id="tambah_pengeluaran_form">
        <div class="isi_tambah_pengeluaran_form">
            <h1>Tambah Data Pengeluaran</h1>
            <div class="box_form_tk">
                <div class="isi_box_form_tk">
                    <p id="p_icon_file">Nama Barang</p>
                    <input type="text" class="input" id="barang_pengeluaran" name="barang_pengeluaran" placeholder="Masukkan Pengeluaran">
                </div>
                <div class="isi_box_form_tk">
                    <p id="p_nama_kategori">Harga Pengeluaran</p>
                    <input type="text" class="input" id="harga_pengeluaran" placeholder="Masukkan Harga Pengeluaran">
                </div>
            </div>
            <div class="box_button_edit_akun">
                <div class="button_cancel_edit_akun" onclick="batal_add_pengeluaran()">
                    <p>Batal</p>
                </div>
                <div class="button_confirm_edit_akun" onclick="simpan_add_pengeluaran()">
                    <p id="text_tkat">Simpan</p>
                    <img src="../../assets/icons/loading-w.svg" id="loading_tkat">
                </div>
            </div>
        </div>
    </div>
    <div class="admin">
        <?php include '../partials/menu.php'; ?>
        <div class="content_admin">
            <h1 class="title_content_admin">Laporan</h1>
            <div class="isi_content_admin">
                <!-- CONTENT -->
                <div class="jumlah_users_admin">
                    <h1>Total Transaksi</h1>
                    <h1><a href="<?php echo $url; ?>admin/transaction"><?php echo $jumlah_transaksi; ?> Transaksi</a></h1>
                </div>
                <div class="add_kategori_adm" onclick="show_add_pengeluaran()">
                    <p>Tambah Pengeluaran</p>
                    <i class="ri-play-list-add-fill"></i>
                </div>
                <div>
                    <table id="laporan" style="margin-top: 20px;">
                        <tr>
                            <th colspan="3">Laporan Laba Rugi</th>
                        </tr>
                        <tr>
                            <td style="width: 75%;">Pemasukan</td>
                            <td style="width: 1%;border-right: 0px;"></td>
                            <td style="text-align: right;border-left: 0px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 75%;"></td>
                            <td style="width: 1%;border-right: 0px;">Rp.</td>
                            <td style="text-align: right;border-left: 0px;"><?php echo number_format($jumlah_transaksi_berhasil['total_pemasukan'], 0, ',', '.') ?></td>
                        </tr>

                        <tr>
                            <td style="width: 75%;">Pengeluaran</td>
                            <td style="width: 25%;border-right: 0px;"></td>
                            <!-- <td style="width: 1%;border-right: 0px;"></td> -->
                            <td style="text-align: right;border-left: 0px;"></td>
                        </tr>
                        <!-- <td style="width: 1%;border-right: 0px;">Rp.</td> -->
                        <!-- <?php $total_pengeluaran = $rugi['total_pengeluaran_dikirim']; ?> -->

                        <?php
                        $laba = ("SELECT * FROM `pengeluaranlabarugi`");
                        $rugi = mysqli_query($server, $laba);
                        while ($row = mysqli_fetch_array($rugi)) {
                        ?>
                            <tr>
                                <td style="width: 50%;"></td>
                                <td style="width: 50%;"><?php echo $row['nama_barang'] ?></td>
                                <td style="text-align: right;border-left: 0px;">Rp.<?php echo number_format($row['pengeluaran'], 0, ',', '.') ?></td>
                                <!-- <td style="width: 1%;border-right: 0px;"></td> -->
                            <?php } ?>
                            </tr>
                            <tr>
                                <td style="width: 75%;"><strong>Total</strong></td>
                                <td style="width: 25%;border-right: 0px;"><strong>Rp.</strong></td>
                                <?php $laba_rugi = $jumlah_transaksi_berhasil['total_pemasukan'] - $total_pengeluaran; ?>
                                <td style="width: 25%;text-align: right;border-left: 0px;"><strong><?php echo number_format(abs($laba_rugi), 0, ',', '.') ?> <?= ($laba_rugi < 0) ? "(Rugi)" : "(Laba)" ?></strong></td>
                            </tr>
                    </table>
                </div>
                <!-- CONTENT -->
            </div>
        </div>
    </div>
    <div id="res" style="display: block;"></div>

    <!-- JS -->
    <script src="../../assets/js/admin/product/index.js"></script>
    <!-- JS -->
</body>

</html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    function simpan_add_pengeluaran() {
        // Mengambil nilai input
        var namaBarang = $("#barang_pengeluaran").val();
        var hargaPengeluaran = $("#harga_pengeluaran").val();

        // Kirim data ke server menggunakan AJAX
        $.ajax({
            url: "simpan_add_pengeluaran.php", // Ganti dengan URL skrip PHP untuk menyimpan data ke database
            type: "POST",
            data: {
                nama_barang: namaBarang,
                pengeluaran: hargaPengeluaran
            },
            beforeSend: function() {
                // Menampilkan animasi loading
                $("#loading_tkat").show();
                $("#text_tkat").hide();
            },
            success: function(response) {
                // Berhasil menyimpan data
                console.log(response); // Tampilkan respons dari server
                window.location.href = 'index.php';
            },
            error: function(xhr, status, error) {
                // Terjadi kesalahan
                console.log(xhr.responseText); // Tampilkan pesan kesalahan
                // Lakukan tindakan jika terjadi kesalahan, seperti menampilkan pesan kesalahan kepada pengguna
            },
            complete: function() {
                // Mengembalikan tampilan tombol setelah proses AJAX selesai
                $("#loading_tkat").hide();
                $("#text_tkat").show();
                $("#tambah_pengeluaran_form").hide();
            }
        });
    }
</script>