<?php
/**
 * E-Present Database Configuration Template
 * Rename this file to config.php or modify directly.
 */

// Database configuration
// Jika variabel lingkungan DB_HOST diset (misal Docker), gunakan itu.
// Jika tidak diset (misal Laragon / XAMPP / Localhost), gunakan default Laragon (localhost, root, "", e_present).

$host     = getenv('DB_HOST') ?: ($_ENV['DB_HOST'] ?? 'localhost');
$username = getenv('DB_USER') ?: ($_ENV['DB_USER'] ?? 'root');
$password = getenv('DB_PASS') !== false ? getenv('DB_PASS') : ($_ENV['DB_PASS'] ?? '');
$db       = getenv('DB_NAME') ?: ($_ENV['DB_NAME'] ?? 'e_present');

// Establish connection
$conn = @new mysqli($host, $username, $password, $db);

// Jika database belum ada (Error 1049: Unknown database), buat database secara otomatis
if ($conn->connect_errno == 1049) {
    $tmpConn = @new mysqli($host, $username, $password);
    if (!$tmpConn->connect_error) {
        $tmpConn->query("CREATE DATABASE IF NOT EXISTS `$db` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci");
        $tmpConn->close();
        $conn = @new mysqli($host, $username, $password, $db);
    }
}

// Check connection
if ($conn->connect_error) {
    die("Koneksi database gagal: " . $conn->connect_error . " (Host: $host, User: $username)");
}

// Auto-initialize tables and initial data if not exists
$checkTable = $conn->query("SHOW TABLES LIKE 'akun'");
if ($checkTable && $checkTable->num_rows == 0) {
    $schemaFile = __DIR__ . '/../db/e-present.sql';
    if (!file_exists($schemaFile)) {
        $schemaFile = __DIR__ . '/../db/schema.sql';
    }
    if (file_exists($schemaFile)) {
        $sql = file_get_contents($schemaFile);
        if ($conn->multi_query($sql)) {
            do {
                if ($result = $conn->store_result()) {
                    $result->free();
                }
            } while ($conn->next_result());
        }
    }
}
?>
