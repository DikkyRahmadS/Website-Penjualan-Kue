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

$bulan = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
$bulan_id = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'];

if (isset($_POST['submit'])) {
    $transaksi = $server->query("SELECT * FROM `invoice`, `iklan`, `kategori`, `akun` WHERE `invoice`.id_iklan = `iklan`.id AND `iklan`.id_kategori = `kategori`.id AND `akun`.id = `invoice`.id_user AND `invoice`.waktu like '" . $_POST['tahun'] . "-" . $bulan_id[$_POST['bulan']] . "-%' AND `invoice`.tipe_progress = 'Selesai'");
    $jumlah_transaksi = mysqli_num_rows($transaksi);
} else {
    $transaksi = $server->query("SELECT * FROM `invoice`, `iklan`, `kategori`, `akun` WHERE `invoice`.id_iklan = `iklan`.id AND `iklan`.id_kategori = `kategori`.id AND `akun`.id = `invoice`.id_user AND `invoice`.waktu like '" . date('Y') . "-" . date('m') . "-%' AND `invoice`.tipe_progress = 'Selesai'");
    $jumlah_transaksi = mysqli_num_rows($transaksi);
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Laporan Bulanan</title>
    <link rel="icon" href="../../assets/icons/<?php echo $logo; ?>" type="image/svg">
    <link rel="stylesheet" href="../../assets/css/admin/laporanbulanan/index.css">
</head>

<body>
    <div class="admin">
        <?php include '../partials/menu.php'; ?>
        <div class="content_admin">
            <?php
            if (isset($_POST['submit'])) {
            ?>
                <h1 class="title_content_admin">Laporan Bulanan <?= $bulan[$_POST['bulan']] . ' ' . $_POST['tahun'] ?></h1>
            <?php
            } else {
            ?>
                <h1 class="title_content_admin">Laporan Bulanan <?= date('F') . ' ' . date('Y') ?></h1>
            <?php
            }
            ?>

            <div class="isi_content_admin">
                <!-- CONTENT -->
                <div class="jumlah_users_admin">
                    <h1>Total Transaksi</h1>
                    <h1><?php echo $jumlah_transaksi; ?> Transaksi</h1>
                </div>
                <div class="form">
                    <form action="" method="POST">
                        <label for="tahun">Tahun</label>
                        <select id="tahun" name="tahun">
                            <?php
                            for ($i = date('Y'); $i >= 2020; $i--) {
                            ?>
                                <option value="<?= $i ?>"><?= $i ?></option>
                            <?php
                            }
                            ?>
                        </select>
                        <label for="bulan">Bulan</label>
                        <select id="bulan" name="bulan">
                            <?php
                            for ($i = 0; $i < 12; $i++) {
                                if (isset($_POST['submit'])) {
                            ?>
                                    <option value="<?= $i ?>" <?= ($bulan_id[$i] == $bulan_id[$_POST['bulan']]) ? 'selected' : '' ?>><?= $bulan[$i] ?></option>
                                <?php
                                } else {
                                ?>
                                    <option value="<?= $i ?>" <?= ($bulan_id[$i] == date('m')) ? 'selected' : '' ?>><?= $bulan[$i] ?></option>
                            <?php
                                }
                            }
                            ?>
                        </select>
                        <input type="submit" name="submit" value="Submit">
                    </form>
                </div>
                <div>
                    <table id="laporan" style="margin-top: 20px;">
                        <tr>
                            <th>Iklan</th>
                            <th>User</th>
                            <th>Tanggal Transaksi</th>
                            <th>Status</th>
                            <!--<th>Pengeluaran</th> -->
                            <th>Pemasukan</th>
                        </tr>
                        <?php
                        $total_pengeluaran = 0;
                        $total_pemasukan = 0;
                        if ($jumlah_transaksi > 0) {
                            while ($data = mysqli_fetch_assoc($transaksi)) {
                        ?>
                                <tr>
                                    <td><?= $data['judul'] ?></td>
                                    <td><?= $data['nama_lengkap'] ?></td>
                                    <td><?= $data['waktu'] ?></td>
                                    <td><?= $data['tipe_progress'] ?></td>
                               <!--     <?php $total_pengeluaran += $data['harga_i']; ?>
                                    <td><?= $data['harga_i'] ?></td> -->
                                    <?php $total_pemasukan += $data['harga_i'] ; ?>
                                    <td><?= $data['harga_i'] ?></td>
                                </tr>
                            <?php
                            }
                        } else {
                            ?>
                            <tr>
                                <td colspan="5">Tidak ada Data</td>
                            </tr>
                        <?php
                        }

                        ?>
                        <tr>
                            <td colspan="4">Total</td>
                           <!-- <td><?= $total_pengeluaran ?></td> -->
                            <td><?= $total_pemasukan ?></td>
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