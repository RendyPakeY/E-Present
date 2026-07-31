<?php
/**
 * E-Present Database Configuration Template
 * Rename this file to config.php and fill in your database credentials.
 */

// Database configuration
$host = "db";               // Docker: db | Localhost: localhost
$username = "epresent_user"; // Database username
$password = "epresent_password"; // Database password
$db = "e_present";          // Database name

// Establish connection
$conn = new mysqli($host, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("Koneksi database gagal: " . $conn->connect_error);
}

// Auto-initialize tables if not exists
$checkTable = $conn->query("SHOW TABLES LIKE 'akun'");
if ($checkTable && $checkTable->num_rows == 0) {
    $schemaFile = __DIR__ . '/../db/schema.sql';
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
