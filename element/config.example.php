<?php
/**
 * E-Present Database Configuration Template
 * Rename this file to config.php and fill in your database credentials.
 */

// Database configuration
$host = "localhost";        // Your database host (e.g. localhost or sqlXXX.infinityfree.com)
$username = "YOUR_DB_USER";  // Your database username
$password = "YOUR_DB_PASS";  // Your database password
$db = "YOUR_DB_NAME";        // Your database name

// Establish connection
$conn = new mysqli($host, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("Koneksi database gagal: " . $conn->connect_error);
}
?>
