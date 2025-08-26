<?php
include "../element/config.php";
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: ../");
}

$current_date = date("Y-m-d");

// Table Content
$query = "SELECT * FROM `absen` WHERE tanggal = '$current_date'";
$tablePresent = $conn->query($query);

// GET Kelas
$query = "SELECT * FROM `kelas`";
$kelas = $conn->query($query);

// GET Event (CURRENT)
$query = "SELECT * FROM `event` ORDER BY id_event DESC LIMIT 1";
$current_event = $conn->query($query);

$varClass = [];

while ($x = $kelas->fetch_assoc()) {
    $varClass[] = "<option value='" . $x['kelas'] . "'>" . $x['kelas'] . "</option>";
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | E-PRESENT</title>
    <link rel="stylesheet" href="../assets/css/style-admin.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <link rel="icon" href="../assets/img/icon.png">
</head>

<body>
    <div class="container">
        <div class="box-content">
            <div class="content-left">
                <div class="table-presence box">
                    <div class="table-container">
                        <table>
                            <tr>
                                <th>No</th>
                                <th>Nama Lengkap</th>
                                <th>Tanggal</th>
                                <th>Keterangan</th>
                            </tr>
                            <div class="anggota-present">
                                <?php
                                $no = 1;
                                while ($x = $tablePresent->fetch_assoc()) {
                                    $nama = $x['nama'];
                                    $tanggal = $x['tanggal'];
                                    $ket = $x['keterangan'];
                                    echo <<<HTML
                                    <tr>
                                        <td>$no</td>
                                        <td>$nama</td>
                                        <td>$tanggal</td>
                                        <td>$ket</td>
                                    </tr>
                                    HTML;
                                    $no++;
                                }
                                ?>
                            </div>
                        </table>
                    </div>
                    <div class="button-table">
                        <button class="yellow-button" onclick="popUp('popup-add')">Manual Add</button>
                        <button class="blue-button" onclick="window.location.href = '../assets/api/getExcel.php'">Download Excel</button>
                    </div>
                </div>
                <div class="form-container">
                    <div class="add-member box">
                        <h1>Add Member</h1>
                        <form method="post" action="../assets/api/addMember.php">
                            <label for="nama">Nama Lengkap</label>
                            <input type="text" name="nama" id="nama" required>
                            <label for="kelas">kelas</label>
                            <select name="kelas" id="kelas-add">
                                <!-- insert kelas here -->
                                    <?php
                                        foreach($varClass as $x) echo $x;
                                    ?>
                            </select>
                            <input type="submit" class="blue-button">
                        </form>
                    </div>
                    <div class="add-event box">
                        <h1>Add Event</h1>
                        <form method="post" action="../assets/api/addEvent.php?pub=<?php echo $_SESSION['username'];?>">
                            <label for="code">Code</label>
                            <input type="text" name="code" id="code" required>
                            <label for="until">Until</label>
                            <input type="time" step="1" lang="en-GB" name="until" id="until" required>
                            <input type="submit" class="blue-button">
                        </form>
                    </div>
                </div>
            </div>
            <div class="content-right">
                <div class="user-info box">
                    <img src="../assets/img/icon_nbg.png" alt="E-ROM">
                    <h1><?php echo $_SESSION['username'];?></h1> <!-- Replace with nama akun -->
                    <button class="red-button" onclick="href('../element/logout.php')">Keluar akun</button>
                </div>
                <div class="event-list box">
                    <h1>Current / Last Event</h1>
                    <div class="event-list-value">
                        <p>Time Start<br>Time End<br>Date<br>Publisher<br>Code</p>
                        <p>:<br>:<br>:<br>:<br>:</p>
                        <?php
                        while ($x = $current_event->fetch_assoc()) {
                            $start = $x['waktu_mulai'];
                            $end = $x['waktu_selesai'];
                            $date = $x['tanggal'];
                            $pub = $x['publisher'];
                            $code = $x['kode'];

                            echo <<<HTML
                            <p>$start<br>$end<br>$date<br>$pub<br>$code</p>
                            HTML;
                        }
                        ?>
                    </div>
                </div>
            </div>
            <div class="popup-add" id="popup-add" >
                <div class="box form-box">
                    <i class="fa-solid fa-xmark cross" onclick="popUp('popup-add')"></i>
                    <h1>Manual Add</h1>
                    <form id="absen" method="post" action="../assets/api/manualPresent.php">
                        <label for="anggota">Nama Lengkap</label>
                        <select name="anggota" id="anggota">
                            <option value="Placeholder"> -- Pilih kelas Anda -- </option>
                        </select>
                        <label for="kelas">Kelas</label>
                        <select name="kelas" id="kelas" onchange="changeKelas('../assets/api/getName.php?kelas=')">
                            <option value="Placeholder"> -- Pilih kelas Anda -- </option>
                            <?php
                            foreach($varClass as $x) echo $x;
                            ?>
                        </select>
                        <label for="until">Date</label>
                        <input type="date" name="date" id="date" required>
                        <input type="submit" class="blue-button">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/cc079fac56.js" crossorigin="anonymous"></script>
    <script src="../assets/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</body>

</html>