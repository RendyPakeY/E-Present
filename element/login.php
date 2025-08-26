<?php
if(isset($_GET['code'])){
    $code = $_GET['code'];
} else{
    $code = "";
}

if ($code == "akun") {
    $error = "<p><i class='fa-solid fa-circle-xmark'></i>Masukan username / password dengan benar</p>";
} else {
    $error = "";
}
?>
<div class="box">
        <img src="assets/img/logo.png" alt="logo" class="logo">
        <div class="content">
            <form id="login" method="post">
                <label for="username">Username</label>
                <input type="text" name="username" placeholder="Masukan username disini">
                <label for="kelas">Password</label>
                <input type="password" name="password" value="" placeholder="Masukan password disini">
                <div class="extra">
                    <div class="error">
                        <?php echo $error; ?>
                    </div>
                <p>Ini adalah login form rahasia. Jika anda tidak sengaja memasuki ini, anggaplah tidak pernah terjadi. Silakan refresh untuk kembali.</p>
                </div>
            </form>
        </div>
        <button class="blue-button" onclick="submitForm()">Masuk</button>
    </div>