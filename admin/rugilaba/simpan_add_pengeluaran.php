<?php
include '../../config.php';

$namaBarang = $_POST['nama_barang'];
$hargaPengeluaran = $_POST['pengeluaran'];

$simpan_peng = $server->query("INSERT INTO `pengeluaranlabarugi`(`nama_barang`, `pengeluaran`) VALUES ('$namaBarang', '$hargaPengeluaran')");

if ($simpan_peng) {
?>
    <script>
        window.location.href = 'index.php';
    </script>
<?php
}
?>