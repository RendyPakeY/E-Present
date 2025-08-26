<?php
include "../../element/config.php";

$nama = $_POST['nama'];
$kelas = $_POST['kelas'];

if(isset($_POST['nama'])){
    $query = "INSERT INTO `anggota`(nama, kelas) VALUE ('$nama', '$kelas')";
    $conn->query($query);
}

header("Location: ../../");

?>