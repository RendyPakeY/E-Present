@echo off
echo 🚀 Menjalankan Docker Compose...
docker compose up -d

if %ERRORLEVEL% EQU 0 (
    echo ✅ Docker Compose berhasil dijalankan!
    echo 🌐 Aplikasi Web lokal: http://localhost:8080
    echo 🗄️  phpMyAdmin lokal: http://localhost:8080/pma
    echo.
    echo 🔗 Membuka tunnel ngrok pada port 8080...
    ngrok http 8080
) else (
    echo ❌ Gagal menjalankan Docker Compose.
    pause
)
