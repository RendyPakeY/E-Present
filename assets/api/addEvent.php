<?php
include "../../element/config.php";

$code = $_POST['code'];
$until = $_POST['until'];
$pub = $_GET['pub'];

$current_date = date("Y-m-d");
$current_time = date("H:i:s"); 


if(isset($_POST['code'])){
    $query = "INSERT INTO `event`(`publisher`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `kode`) VALUE ('$pub', '$current_date', '$current_time', '$until', '$code')";
    $conn->query($query);
}

header("Location: ../../");

?>