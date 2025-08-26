<div class="box">
    <img src="assets/img/logo.png" alt="logo" class="logo">
    <div class="content">
        <div class="warning">
            <?php
            $code = $_GET['code'];
            if($code == "device"){
               echo <<<HTML
                <!----------Multipe Device--------->
                <h1><i class="fa-solid fa-triangle-exclamation"></i>Multiple Device Detected</h1>
                <p>Jika anda melihat ini, kemungkinan anda melakukan absen lebih dari satu akun. Anda hanya dapat melakukan absen tidak lebih dari satu akun. Silakan hubungi admin jika Anda merasa ini adalah kesalahan.</p>
                HTML;
            }
            else if($code == "event"){
                echo <<<HTML
                <!----------Event Not Found--------->
                <h1><i class="fa-solid fa-triangle-exclamation"></i>Can't Find Present Event</h1>
                <p>Jika anda melihat ini, kemungkinan anda terlambat melakukan absen, atau tidak ada kegiatan extrakurikuler hari ini. Silakan hubungi admin jika Anda merasa ini adalah kesalahan.</p>
                HTML;
            }
            else if($code == "succ"){
                echo <<<HTML
                <!----------Success--------->
                <h1 class="suc"><i class="fa-solid fa-circle-check"></i></i> You are now checked in</h1>
                <p>Jika anda melihat ini, absensi anda telah kami rekam. Anda dapat meninggalkan halaman ini atau anda bisa klik tombol dibawah untuk kembali kehalaman utama.</p>
                HTML;
            }
            ?>

        </div>
    </div>
    <button class="blue-button" onclick="to('content/welcome', '')">Kembali ke menu awal</button>
</div>