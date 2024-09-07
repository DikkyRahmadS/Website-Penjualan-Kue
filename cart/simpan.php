<?php
include '../config.php';

if (isset($_POST['cartId']) && isset($_POST['jumlah']) && isset($_POST['harga_k'])) {
    $cartId = $_POST['cartId'];
    $jumlah = $_POST['jumlah'];
    $harga_k = $_POST['harga_k'];

    // Lakukan koneksi ke database dan lakukan query untuk melakukan update
    // Sesuaikan dengan struktur tabel dan nama kolom yang sesuai dengan database Anda
    $query = "UPDATE keranjang SET jumlah='$jumlah', harga_k='$harga_k' WHERE id='$cartId'";
    $result = $server->query($query);

    if ($result) {
        echo "Data berhasil disimpan ke database.";
    } else {
        echo "Terjadi kesalahan saat menyimpan data ke database.";
    }
} else {
    echo "Data tidak lengkap.";
}
