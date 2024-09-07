<?php
include '../config.php';

$page = 'NOTIFIKASI';

$update_status_notification = $server->query("UPDATE `notification` SET `status_notif`='Read' WHERE `id_user`='$iduser' ");

$select_notification = $server->query("SELECT * FROM `notification`, `invoice`, `iklan` WHERE notification.id_user='$iduser' AND notification.id_invoice=invoice.idinvoice AND invoice.id_iklan=iklan.id ORDER BY `notification`.`id_notif` DESC");
$jumlah_notification = mysqli_num_rows($select_notification);
?>
<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notifikasi</title>
    <link rel="icon" href="../assets/icons/<?php echo $logo; ?>" type="image/svg">
    <link rel="stylesheet" href="../assets/css/chat/index.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>

<body>
    <!-- HEADER -->
    <?php include '../partials/header.php'; ?>
    <!-- HEADER -->

    <!-- CONTENT -->
    <div class="width">
        <div class="notification">
            <div class="head_notification">
                <h1>Chat With Admin</h1>
            </div>

            <div class="isi_notification0">
                <div class="chat-container">
                    <!-- <div class="chat-message left">
                        <div class="chat-bubble">
                            <p class="chat-name">Admin</p>
                            <p>Hello!</p>
                            <span class="chat-time left">10:00 AM</span>
                        </div>
                    </div>
                    <div class="chat-message right">
                        <div class="chat-bubble">
                            <p>Hi there!</p>
                            <span class="chat-time right">10:01 AM</span>
                        </div>
                    </div>
                    <div class="chat-message left">
                        <div class="chat-bubble">
                            <p class="chat-name">Admin</p>
                            <p>How are you doing today?</p>
                            <span class="chat-time left">10:02 AM</span>
                        </div>

                    </div>
                    <div class="chat-message right">
                        <div class="chat-bubble">
                            <p>Not bad, thanks. How about you?</p>
                            <span class="chat-time right">10:03 AM</span>
                        </div>
                    </div> -->
                </div>

            </div>
            <div class="chat-input-container">
                <input id="txt" type="text" placeholder="Type your message...">
                <button type="submit" id="send">Send</button>
            </div>
        </div>
    </div>
    <!-- CONTENT -->

    <!-- FOOTER -->
    <?php include '../partials/footer.php'; ?>
    <!-- FOOTER -->

    <!-- FOOTER -->
    <?php include '../partials/bottom-navigation.php'; ?>
    <!-- FOOTER -->


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
        firebase.database().ref('CHAT/<?php echo $iduser; ?>/obrolan').on('value', function(snapshot) {
            var value = snapshot.val(); //kode acak di firebase
            var htmls = [];
            $.each(value, function(index, value) {
                if (value) {
                    if (value.status == "Me") {
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
                            '<p class="chat-name">Admin</p>' +
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
            var listRef = database.ref('CHAT/<?php echo $iduser ?>/datadiri/');
            listRef.set({
                name: '<?php echo $namauser; ?>'
            });

            var listRef = database.ref('CHAT/<?php echo $iduser ?>/obrolan/');
            listRef.push({
                status: 'Me',
                chat: $("#txt").val(),
                time: '<?php echo date('d F Y H:i') ?>'
            });
            $('#txt').val("");
        });
    </script>
</body>

</html>