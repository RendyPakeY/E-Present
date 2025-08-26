<?php
include "../element/config.php";

session_start();

$_SESSION['fingerprint'] = $_GET['fingerprint'];


date_default_timezone_set("Asia/Jakarta"); 

$current_date = date("Y-m-d");
$current_time = date("H:i:s"); 
$fingerprint = $_SESSION['fingerprint'];

// Checking Present Event
$query = "SELECT * FROM `event` WHERE tanggal = '$current_date' AND Time('$current_time') BETWEEN waktu_mulai AND waktu_selesai";
$event = $conn->query($query);

if($event->num_rows >= 1){
    // SUCCESS
    // Then Checking multiple device
    $query = "SELECT * FROM `absen` WHERE tanggal = '$current_date' AND fingerprint = '$fingerprint'";
    $device = $conn->query($query);
    if($device->num_rows != 0 || $_COOKIE['terakhir'] == $current_date){
        // FAILED
        // Then Display the form
        $_GET['code'] = "device";
        include "warning.php";
    } else{
        // FAILED
        include "form.php";
    }
} else{
    // FAILED
    $_GET['code'] = "event";
    include "warning.php";
}

?>