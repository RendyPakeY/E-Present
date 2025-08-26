<?php
include "../../element/config.php";

$kelas = $_GET['kelas'];

$query = "SELECT * FROM anggota WHERE kelas = '$kelas'";
$name = $conn->query($query);

echo "<option value='Placeholder'> -- Pilih kelas Anda -- </option>";

while($x = $name->fetch_assoc()){
    echo "<option value='".$x['nama']."'>".$x['nama']."</option>";
}
?>