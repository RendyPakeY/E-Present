<?php

if (isset($_POST['username'])) {
    include "../element/config.php";

    $username = $_POST['username'];
    $password = $_POST['password'];
    $query = "SELECT * FROM `akun` WHERE username = '$username' AND password = '$password'";
    $result = $conn->query($query);

    if ($result->num_rows == 1) {
        session_start();
        while ($x = $result->fetch_assoc()) {
            $_SESSION['username'] = $x['username'];
        }
        echo "berhasil";
    } else {
        $code = "akun";
        header("Location: ../element/login.php?code=$code");
    }
} else {
    header("Location: ../element/login.php");
}
?>
