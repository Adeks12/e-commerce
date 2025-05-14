<?php
include_once("libs/dbfunctions.php");
$dbobject = new dbobject();

// Create userdata table if not exists
$sql = "CREATE TABLE IF NOT EXISTS userdata (
    username VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    mobile_phone VARCHAR(20),
    sex VARCHAR(10),
    role_id VARCHAR(10),
    user_locked TINYINT(1) DEFAULT 0,
    user_disabled TINYINT(1) DEFAULT 0,
    pin_missed INT DEFAULT 0,
    PRIMARY KEY (username)
)";

$result = $dbobject->db_query($sql, false);

// Create role table if not exists
$sql = "CREATE TABLE IF NOT EXISTS role (
    role_id VARCHAR(10) PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL,
    role_enabled TINYINT(1) DEFAULT 1,
    created DATETIME DEFAULT CURRENT_TIMESTAMP
)";

$result = $dbobject->db_query($sql, false);

// Insert default role if not exists
$sql = "INSERT IGNORE INTO role (role_id, role_name) VALUES ('012', 'Customer')";
$result = $dbobject->db_query($sql, false);

echo "Database setup completed.";
?> 