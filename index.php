<?php
session_start();

// cookies init
if (!isset($_COOKIE['terakhir'])) {
    setcookie("terakhir", "First time", time() + 86400, "/"); // set baru
}

if (isset($_SESSION['username'])) {
    header("Location: admin/");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome | E-PRESENT</title>
    	<!-- HTML Meta Tags -->
    <title>	E-PRESENT</title>
    <meta name="description" content="Aplikasi absensi untuk kegiatan ekstrakurikuler E-ROM.">

    <!-- Facebook Meta Tags -->
    <meta property="og:url" content="https://e-present.rf.gd">
    <meta property="og:type" content="website">
    <meta property="og:title" content="	E-PRESENT">
    <meta property="og:description" content="Aplikasi absensi untuk kegiatan ekstrakurikuler E-ROM.">
    <meta property="og:image"   content="https://opengraph.b-cdn.net/production/images/bca7eb0d-42ec-43ae-8070-4541d0ff06e8.jpg?token=DuOa1mUHUf7GW2HdzSQ1OV-_4WviTVeFO2CBzhTPhlQ&height=538&width=1024&expires=33289856240">

<!-- Twitter Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta property="twitter:domain" content="e-present.rf.gd">
    <meta property="twitter:url" content="https://e-present.rf.gd">
    <meta name="twitter:title" content="	E-PRESENT">
    <meta name="twitter:description" content="Aplikasi absensi untuk kegiatan ekstrakurikuler E-ROM.">
    <meta name="twitter:image" content="https://opengraph.b-cdn.net/production/images/bca7eb0d-42ec-43ae-8070-4541d0ff06e8.jpg?token=DuOa1mUHUf7GW2HdzSQ1OV-_4WviTVeFO2CBzhTPhlQ&height=538&width=1024&expires=33289856240">

<!-- Meta Tags Generated via https://www.opengraph.xyz -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="icon" href="assets/img/icon.png">
</head>

<body>
    <main class="container" id="container">
        <?php include("content/welcome.php") ?>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/@fingerprintjs/fingerprintjs@3/dist/fp.min.js"></script>
    <script src="https://kit.fontawesome.com/cc079fac56.js" crossorigin="anonymous"></script>
    <script src="assets/js/main.js"></script>
</body>

</html>