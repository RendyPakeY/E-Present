#!/bin/bash

echo "🚀 Menjalankan Docker Compose..."
docker compose up -d

if [ $? -eq 0 ]; then
    echo "✅ Docker Compose berhasil dijalankan!"
    echo "🌐 Aplikasi Web lokal: http://localhost:8080"
    echo "🗄️  phpMyAdmin lokal: http://localhost:8080/pma"
    echo ""
    
    # Cek apakah ngrok terinstall
    if command -v ngrok &> /dev/null; then
        echo "🔗 Membuka tunnel ngrok pada port 8080..."
        ngrok http 8080
    else
        echo "⚠️  ngrok tidak ditemukan di sistem."
        echo "Silakan download dan install ngrok terlebih dahulu dari https://ngrok.com"
    fi
else
    echo "❌ Gagal menjalankan Docker Compose."
    exit 1
fi
