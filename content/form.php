<?php
include "../element/config.php";

date_default_timezone_set("Asia/Jakarta");

$code = "";
$query = "SELECT * FROM kelas WHERE 1";
$kelas = $conn->query($query);

if (isset($_POST['anggota'])) {
    session_start();

    $post_anggota = $_POST['anggota'];
    $post_kelas = $_POST['kelas'];
    $post_kode = $_POST['kode'];
    $fingerprint = $_SESSION['fingerprint'];
    $current_date = date("Y-m-d");
    $current_time = date("H:i:s");

    // CHECKING EVENT 
    $query = "SELECT * FROM `event` WHERE kode = '$post_kode' AND tanggal = '$current_date' AND time('$current_time') BETWEEN waktu_mulai AND waktu_selesai";
    $valid_code = $conn->query($query);

    if ($valid_code->num_rows >= 1) {
        // EVENT FOUND
        // CHEKING VALID ANGGOTA
        $query = "SELECT * FROM `anggota` WHERE nama = '$post_anggota' AND kelas = '$post_kelas'";
        $valid_anggota = $conn->query($query);

        if ($valid_anggota->num_rows >= 1) {
            // ANGGOTA FOUND
            // CHEKING ALREADY PRESENT
            $query = "SELECT * FROM `absen` WHERE nama = '$post_anggota' AND fingerprint = '$fingerprint' AND tanggal = '$current_date'";
            $valid_absen = $conn->query($query);

            if ($valid_absen->num_rows == 0) {
                // NOT ALREADY PRESENT DETECTED (SUCCESS)
                // CHECKING MULTIPLE DEVICE
                $query = "SELECT * FROM `absen` WHERE fingerprint = '$fingerprint' AND tanggal = '$current_date'";
                $valid_device = $conn->query($query);

                if ($valid_device->num_rows != 0 || $_COOKIE['terakhir'] == $current_date) {
                    // ERROR CODE = MULTIPLE DEVICE DETECTED
                    header("Location: warning.php?code=device");
                } else {
                    // MULTIPLE DEVICE NOT DETECTED (SUCCESS)
                    // ADD TO ABSEN
                    $query = "INSERT INTO `absen` (nama, tanggal, keterangan, fingerprint) VALUES('$post_anggota', '$current_date', 'Hadir', '$fingerprint')";
                    $send = $conn->query($query);
                    // ADD COOCKIES HERE
                    echo $_COOKIE['terakhir'];
                    if (isset($_COOKIE['fingerprint'])) {
                        setcookie("fingerprint", "", time() - 3600, "/"); // hapus dulu
                    }
                    setcookie("terakhir", $current_date, time() + 86400, "/"); // set baru
                    echo $_COOKIE['terakhir'];
                    // SEND TO SUCC PAGE
                    header("Location: warning.php?code=succ");
                }
            } else {
                $code = "already";
            }
        } else {
            // ERROR CODE = ANGGOTA NOT FOUND
            $code = "anggota";
        }
    } else {
        // CODE ERROR = WRONG CODE
        $code = "kode";
    }
}
?>

<div class="box">
    <img src="assets/img/logo.png" alt="logo" class="logo">
    <div class="content">
        <form id="absen" method="post">
            <label for="anggota">Nama Lengkap</label>
            <select name="anggota" id="anggota">
                <option value="Placeholder"> -- Pilih kelas Anda -- </option>
            </select>
            <label for="kelas">Kelas</label>
            <select name="kelas" id="kelas" onchange="changeKelas('assets/api/getName.php?kelas=')">
                <option value="Placeholder"> -- Pilih kelas Anda -- </option>
                <?php
                while ($x = $kelas->fetch_assoc()) {
                    echo "<option value='" . $x['kelas'] . "'>" . $x['kelas'] . "</option>";
                }
                ?>
            </select>
            <label for="kode">Kode Absen</label>
            <input type="text" name="kode" id="kode" placeholder="Masukan kode disini">
            <div class="extra">
                <div class="error">
                    <?php
                    switch ($code) {
                        case "kode":
                            echo "<p><i class='fa-solid fa-circle-xmark'></i>Kode Absen yang anda masukan salah</p>";
                            break;
                        case "already":
                            echo "<p><i class='fa-solid fa-circle-xmark'></i>Anda sudah melakukan absen sebelumnya</p>";
                            break;
                        case "anggota":
                            echo "<p><i class='fa-solid fa-circle-xmark'></i>Masukan nama / kelas dengan benar</p>";
                            break;
                    }
                    ?>
                </div>
                <div class="add"><a href="https://api.whatsapp.com/send?phone=6283895189337&text=Halo%20kang%2C%20nama%20saya%20gak%20ada%2C%20bisa%20tolong%20tambahin%20%3F">Klik saya jika nama anda tidak ada</a></div>
            </div>
        </form>
    </div>
    <button class="blue-button" onclick="submitForm()">Saya Hadir !</button>
</div>
