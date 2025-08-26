var key = "";
var visitorId = "";
var formKey = "";
var container = document.getElementById("container");

FingerprintJS.load().then(fp => {
    fp.get().then(result => {
        visitorId = result.visitorId;
    });
});


document.addEventListener("click", (e) => {
    if (e.target.id == "secret") {
        if (key == "logoaplikasiuntukadminlogologologo") {
            formKey = key;
            console.log("berhasil");
            fetch("content/login.php")
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.text();
                })
                .then(data => {
                    container.innerHTML = data;
                })
                .catch(err => {
                    container.innerHTML = "<h1>404 - Page not Found</h1>";
                })
        } else {
            console.log("gagal");
        }
    } else if (e.target.alt == "logo") {
        key += e.target.alt;
    } else if (e.target.textContent.trim().toLowerCase() == "kode") {
        key = "";
    } else {
        key += e.target.textContent.trim().toLowerCase();
    }
});

function to(path, extra) {
    fetch(path + ".php" + extra)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.text();
        })
        .then(data => {
            container.innerHTML = data;
        })
        .catch(err => {
            container.innerHTML = "<h1>404 - Page not Found</h1>";
        })
}

function changeKelas(path) {
    var kelas = document.getElementById("kelas");
    var anggota = document.getElementById("anggota");
    var selectedKelas = kelas.value;
    fetch(path + selectedKelas)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.text();
        })
        .then(data => {
            anggota.innerHTML = data;
        })
        .catch(err => {
            console.error("Fetch error:", err); // biar kelihatan error-nya
            anggota.innerHTML = "<h1>404 - Page not Found</h1>";
        })
}

function submitForm() {
    if (formKey == "logoaplikasiuntukadminlogologologo") {
        var absen = document.getElementById("login");

        var username = absen.elements['username'].value;
        var password = absen.elements['password'].value;

        var formData = new FormData;
        formData.append("username", username);
        formData.append("password", password);

        fetch("content/login.php", {
            method: "post",
            body: formData
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.text();
            })
            .then(data => {
                if (data == "berhasil") {
                    window.location.href = "admin/";
                    console.log("berhasil");
                } else {
                    container.innerHTML = data;
                }
            })
            .catch(err => {
                console.error("Fetch error:", err); // biar kelihatan error-nya
                anggota.innerHTML = "<h1>404 - Page not Found</h1>";
            })
    } else {
        var absen = document.getElementById("absen");

        var anggota = absen.elements['anggota'].value;
        var kelas = absen.elements['kelas'].value;
        var kode = absen.elements['kode'].value;

        var formData = new FormData;
        formData.append("anggota", anggota);
        formData.append("kelas", kelas);
        formData.append("kode", kode);

        fetch("content/form.php", {
            method: "post",
            body: formData
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.text();
            })
            .then(data => {
                container.innerHTML = data;
            })
            .catch(err => {
                console.error("Fetch error:", err); // biar kelihatan error-nya
                anggota.innerHTML = "<h1>404 - Page not Found</h1>";
            })
    }
}

function popUp(id){
var target = document.getElementById(id);
if(target.style.display == "flex"){
    target.style.display = "none";
} else{
    target.style.display = "flex";
}
}

function href(path){
    window.location.href = path;
}

window.addEventListener("DOMContentLoaded", () => {
    document.addEventListener("keydown", (e) => {
        if (e.key == "Enter") {
            e.preventDefault();
            console.log(e.key);
            submitForm();
        }
    });
});


