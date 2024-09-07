<?php
include '../config.php';
$page = 'KERANJANG';
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes" />
	<title>Keranjang Belanja</title>
	<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
	<link rel="icon" href="../assets/icons/<?php echo $logo; ?>" type="image/svg">
	<link rel="stylesheet" href="../assets/css/cart/index.css">
	<link rel="stylesheet" href="../assets/css/product/view.css">
</head>

<body>
	<!-- HEADER -->
	<?php include '../partials/header.php'; ?>
	<!-- HEADER -->

	<!-- CONTENT -->
	<div class="width">
		<?php
		if (isset($_COOKIE['login'])) {
			$select_cart = $server->query("SELECT * FROM `kategori`, `keranjang`, `iklan` WHERE keranjang.id_user='$iduser' AND keranjang.id_iklan=iklan.id AND iklan.id_kategori=kategori.id ORDER BY `keranjang`.`id` DESC");
			$cek_cart = mysqli_num_rows($select_cart);
		?>
			<div class="header_cart" id="header_cart">
				<p>Total Kerajnang Belanja <span><?php echo $cek_cart; ?></span></p>
			</div>
			<div class="box_isi_cart">
				<?php
				if ($cek_cart) {
					$total_semua = array();
					while ($cart_data = mysqli_fetch_array($select_cart)) {
						$hitung_diskon_fs = ($cart_data['diskon_k'] / 100) * $cart_data['harga_k'];
						$harga_diskon_fs = ($cart_data['harga_k'] - $hitung_diskon_fs) * $cart_data['jumlah'];
						$exp_gambar_cd = explode(',', $cart_data['gambar']);
				?>
						<div class="isi_cart" id="isi_cart<?php echo $cart_data['id']; ?>" style="display: table-column-group;">

							<div class="box_gambar_judul" style="width:auto; float:left;">
								<input type="checkbox" class="check_produk" checked style="float:left;margin: 33px 10px;">
								<img src="../assets/image/product/<?php echo $exp_gambar_cd[0]; ?>" alt="">
								<div class="box_judul_ic" style="width: max-content;padding-left: 10px;">
									<h1><?php echo $cart_data['judul']; ?></h1>
									<p>Kategori <span><?php echo $cart_data['nama']; ?></span></p>
									<p>Total Produk <span id="jumlah_text"><?php echo $cart_data['jumlah']; ?></span></p>
								</div>
							</div>
							<div class="box_detail_isi_cart" style="width:auto; float:right;">
								<div class="box_total_harga" style="width: -webkit-fill-available;">
									<p>Total Harga</p>
									<h1><span>Rp</span> <span id="harga_varian_produk"><?php echo number_format($harga_diskon_fs, 0, ".", "."); ?></span></h1>
								</div>
								<div class="harga_varian_produk" style="margin: 0px 49px;">
									<div class="box_pm_jumlah">
										<div class="box_button_jumlah kurang">
											<img src="../assets/icons/kurang.svg">
										</div>
										<div class="box_hasil_jumlah">
											<input type="text" value="<?php echo $cart_data['jumlah']; ?>" id="jumlah_produk">
										</div>
										<div class="box_button_jumlah tambah">
											<img src="../assets/icons/tambah.svg">
										</div>
									</div>
								</div>
								<div class="bayar" id="button_checkout<?php echo $cart_data['id']; ?>" onclick="checkout('<?php echo $cart_data['id']; ?>', 'id')">Checkout</div>
								<div class="bayar loading_checkout" id="loading_checkout<?php echo $cart_data['id']; ?>"><img src="../assets/icons/loading-w.svg" alt=""></div>
								<div class="box_remove_cart" onclick="removecart(<?php echo $cart_data['id']; ?>)" style="padding: 0px 10px;">
									<i class="ri-delete-bin-line" id="icon_remove_cart<?php echo $cart_data['id']; ?>"></i>
									<img src="../assets/icons/loading-o.svg" id="loading_remove_cart<?php echo $cart_data['id']; ?>">
								</div>
							</div>
							<input type="hidden" id="harga_satuan_value" value="<?php echo $cart_data['harga_k']; ?>">
							<input type="hidden" id="harga_max" value="<?php echo $cart_data['stok'] - $cart_data['terjual']; ?>">
						</div>

					<?php }
				} else {
					?>
					<div class="box_cart_0">
						<img src="../assets/icons/shopping-cart.svg" class="cart_0">
						<p class="p_cart_0">Belum Ada Produk Di Keranjang</p>
					</div>
				<?php } ?>
				<div class="varian_produk" style="width: auto;">
					<div class="harga_varian_produk">
						<p>Total Semuanya</p>
						<h1>Rp <span id="total_semua"></span></h1>
					</div>
					<!-- <div class="box_button_varian" id="buvar_masukkan_keranjang" style="display: block;">
<div class="button" id="masukan_keranjang">
<p>Checkout</p>-->
				</div>
				<div class="button" id="loading_masukan_keranjang">
					<img src="../assets/icons/loading-w.svg" alt="">
				</div>
			</div>

	</div>
	</div>
<?php
		} else {
			include '../partials/belum-login.php';
		}
?>
</div>
<div id="res"></div>
<!-- CONTENT -->

<!-- BOTTOM NAVIGATION -->
<?php include '../partials/bottom-navigation.php'; ?>
<!-- BOTTOM NAVIGATION -->

<!-- FOOTER -->
<?php include '../partials/footer.php'; ?>
<!-- FOOTER -->

<!-- JS -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script src="../assets/js/cart/index.js"></script>
<script>
	// Kode untuk menangani penambahan jumlah_produk
	$('.tambah').click(function() {
		var parent = $(this).closest('.isi_cart');
		var jumlah_produk = parent.find('#jumlah_produk').val();
		parent.find('#jumlah_text').text(jumlah_produk);

		if (jumlah_produk < 5) {
			parent.find('#jumlah_produk').val(parseInt(jumlah_produk) + 1);

			var harga_satuan = parent.find('#harga_satuan_value').val();
			var harga_varian = parent.find('#harga_varian_produk').text().split('.').join("");
			var total_harga = parseInt(harga_varian) + parseInt(harga_satuan);
			parent.find('#harga_varian_produk').text(rubah(total_harga));

			total();
		}
	});

	$('.kurang').click(function() {
		var parent = $(this).closest('.isi_cart');
		var jumlah_produk = parent.find('#jumlah_produk').val();
		parent.find('#jumlah_text').text(jumlah_produk);

		if (jumlah_produk > 1) {
			parent.find('#jumlah_produk').val(parseInt(jumlah_produk) - 1);

			var harga_satuan = parent.find('#harga_satuan_value').val();
			var harga_varian = parent.find('#harga_varian_produk').text().split('.').join("");
			var total_harga = parseInt(harga_varian) - parseInt(harga_satuan);
			parent.find('#harga_varian_produk').text(rubah(total_harga));

			total();
		}
	});

	$(document).ready(function() {
		total();
	});

	$('.check_produk').change(function() {
		total();
	});

	function total() {
		var total = 0;
		$('.check_produk:checked').each(function() {
			var parent = $(this).closest('.isi_cart');
			var harga_varian = parent.find('#harga_varian_produk').text().split('.').join("");
			total += parseInt(harga_varian);
		});
		$('#total_semua').text(rubah(total));
	}

	function rubah(angka) {
		var reverse = angka.toString().split('').reverse().join(''),
			ribuan = reverse.match(/\d{1,3}/g);
		ribuan = ribuan.join('.').split('').reverse().join('');
		return ribuan;
	}
</script>
<!-- JS -->
</body>

</html>