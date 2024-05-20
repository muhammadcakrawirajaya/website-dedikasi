<?php
session_start();
define("ROOT_URL", "http://localhost:8888/website/");
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', 'root');
define('DB_NAME', 'website');
if (!isset($_SESSION['user-id'])) {
    header("location: " . ROOT_URL . "logout.php");
    //destroy all sessions and redirect user to login page
    session_destroy();
    die();
    header("location: " . ROOT_URL . "signin.php");
}