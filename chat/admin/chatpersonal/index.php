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
    <title>Chat Personal</title>
    <link rel="icon" href="../../assets/icons/<?php echo $logo; ?>" type="image/svg">
    <link rel="stylesheet" href="../../assets/css/admin/chatpersonal/index.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>

<body>
    <?php if (isset($_GET['id'])) {
    } else {
        header("location: " . $url . "admin/chat/");
    } ?>

    <div class="admin">
        <?php include '../partials/menu.php'; ?>
        <div class="content_admin">
            <h1 class="title_content_admin">Chat</h1>
            <div class="isi_content_admin">
                <!-- CONTENT -->
                <div class="isi_notification0">
                    <div class="chat-message right">

                    </div>
                    <div class="chat-container">

                    </div>
                </div>
                <div class="chat-input-container">
                    <input id="txt" type="text" placeholder="Type your message...">
                    <button type="submit" id="send">Send</button>
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
            apiKey: "AIzaSyCyWm2TvqpQ66xm0sFGr7MsrmmXmDDBbG4",
            authDomain: "omamacake2.firebaseapp.com",
            databaseURL: "https://omamacake2-default-rtdb.asia-southeast1.firebasedatabase.app",
            projectId: "omamacake2",
            storageBucket: "omamacake2.appspot.com",
            messagingSenderId: "287729089746",
            appId: "1:287729089746:web:0677dfd7bb4113a2c4810b",
            measurementId: "G-SLHHM4VFGK"
        };
        firebase.initializeApp(config);
        firebase.analytics();
        var database = firebase.database();
        // Get Data
        firebase.database().ref('CHAT/<?php echo $_GET['id']; ?>/obrolan').on('value', function(snapshot) {
            var value = snapshot.val();
            var htmls = [];
            $.each(value, function(index, value) {
                if (value) {
                    if (value.status == "Admin") {
                        htmls.push(
                            '<div class="chat-message right">' +
                            '<div class="chat-bubble">' +
                            '<p>' + value.chat + '</p>' +
                            '<span class="chat-time right">' + value.time + '</span>' +
                            '</div>' +
                            '</div>');
                        $('.chat-container').html(htmls);
                    } else {
                        htmls.push('<div class="chat-message left">' +
                            '<div class="chat-bubble">' +
                            '<p>' + value.chat + '</p>' +
                            '<span class="chat-time left">' + value.time + '</span>' +
                            '</div>' +
                            '</div>');
                        $('.chat-container').html(htmls);
                    }
                }
            });
        });

        $('#send').on('click', function() {
            var listRef = database.ref('CHAT/<?php echo $_GET['id']; ?>/obrolan/');
            listRef.push({
                status: 'Admin',
                chat: $("#txt").val(),
                time: '<?php echo date('d F Y H:i') ?>'
            });
            $('#txt').val("");
        });
    </script>
</body>

</html>