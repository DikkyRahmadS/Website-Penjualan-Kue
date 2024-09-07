<?php
include '../../config.php';

$page_admin = 'kategori';

if (isset($_COOKIE['login_admin'])) {
    if ($akun_adm == 'false') {
        header("location: " . $url . "system/admin/logout");
    }
} else {
    header("location: " . $url . "admin/login/");
}

$select_kategori_adm = $server->query("SELECT * FROM `kategori`");
$jumlah_kategori_adm = mysqli_num_rows($select_kategori_adm);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Kategori</title>
    <link rel="icon" href="../../assets/icons/<?php echo $logo; ?>" type="image/svg">
    <link rel="stylesheet" href="../../assets/css/admin/category/index.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>

<body>
    <div class="admin">
        <?php include '../partials/menu.php'; ?>
        <div class="content_admin">
            <h1 class="title_content_admin">Chat</h1>
            <div class="isi_content_admin">
                <!-- CONTENT -->
                <div class="all_users_admin">
                    <?php
                    // while ($data_kategori_adm = mysqli_fetch_assoc($select_kategori_adm)) {
                    //     $id_kategori_adm = $data_kategori_adm['id'];
                    //     $select_produk_kat = $server->query("SELECT * FROM `iklan` WHERE `id_kategori`='$id_kategori_adm'");
                    //     $jumlah_produk_kat = mysqli_num_rows($select_produk_kat);
                    ?>
                    <!-- <div class="isi_all_users_admin">
                            <div class="box_left_aua">
                                <div class="isi_box_left_aua">
                                    <h5><a href="../chatpersonal/"><?php echo $data_kategori_adm['nama']; ?></a></h5>
                                </div>
                            </div>
                            <div class="box_right_aua">
                                <div class="isi_box_right_aua">
                                    <h3>Jumlah Produk</h3>
                                    <p><?php echo $jumlah_produk_kat; ?></p>
                                </div>
                            </div>
                        </div> -->
                    <?php
                    //}
                    ?>
                </div>
                <!-- CONTENT -->
            </div>
        </div>
    </div>
    <div id="res"></div>

    <!-- JS -->
    <script src="../../assets/js/admin/category/index.js"></script>
    <!-- JS -->

    <script src="https://www.gstatic.com/firebasejs/7.14.6/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.14.6/firebase-analytics.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.14.6/firebase-database.js"></script>
    <script>
        // Initialize Firebase
        var config = {
            apiKey: "AIzaSyDIbBOGIbjCj1DlKUnn7NwTDho9R5zt66c",
  authDomain: "omamacake-bdcbe.firebaseapp.com",
  databaseURL: "https://omamacake-bdcbe-default-rtdb.asia-southeast1.firebasedatabase.app",
  projectId: "omamacake-bdcbe",
  storageBucket: "omamacake-bdcbe.appspot.com",
  messagingSenderId: "772989327675",
  appId: "1:772989327675:web:04f50f13a1289c682a7f1e",
  measurementId: "G-EBK9JQSPK5"
        };
        firebase.initializeApp(config);
        firebase.analytics();
        var database = firebase.database();
        // Get Data
        firebase.database().ref('CHAT/').on('value', function(snapshot) {
            var value = snapshot.val(); //kode acak di firebase
            var htmls = [];
            $.each(value, function(index, value) {
                var test = '';
                firebase.database().ref('CHAT/' + index + '/datadiri').on('value', function(snapshot2) {
                    var value2 = snapshot2.val();
                    $.each(value2, function(index2, value) {
                        test += '<div class="isi_all_users_admin">' +
                            '<div class="box_left_aua">' +
                            '<div class="isi_box_left_aua">' +
                            '<h5><a href="../chatpersonal/?id=' + index + '">' + value + '</a></h5>' +
                            '</div>' +
                            '</div>';
                        console.log(value);
                    });
                });
                firebase.database().ref('CHAT/' + index + '/obrolan').on('value', function(snapshot2) {
                    var value2 = snapshot2.val();
                    var test2 = '';
                    $.each(value2, function(index2, value) {
                        test2 = '<div class="box_right_aua">' +
                            '<div class="isi_box_right_aua">' +
                            '<h3>' + value.chat + '</h3>' +
                            '<p>' + value.time + '</p>' +
                            '</div>' +
                            '</div>' +
                            '</div>';
                        console.log(value);
                    });
                    test += test2;
                    htmls.push(test);
                });
                $('.all_users_admin').html(htmls);
            });
        });

        $('#send').on('click', function() {
            var listRef = database.ref('CHAT/<?php echo $iduser ?>/');
            listRef.push({
                status: 'Me',
                chat: $("#txt").val(),
                time: '<?php echo date('d F Y H:i') ?>'
            });
            $("#txt").val("");
        });
    </script>
</body>

</html>