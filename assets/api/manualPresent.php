<?php
include "../../element/config.php";

$nama = $_POST['anggota'];
$kelas = $_POST['kelas'];
$date = $_POST['date'];
$fingerprint = "ADMIN ACCESS HERE";

if(isset($_POST['date'])){
    $query = "INSERT INTO `absen`(`nama`, `tanggal`, `keterangan`, `fingerprint`) VALUES ('$nama','$date','hadir','$fingerprint')";
    $conn->query($query);
}
header("Location: ../../");
?>