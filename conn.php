<?php

require 'vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$servername = $_ENV['HOST'];
$username = $_ENV['USERNAME'];
$password = $_ENV['PASSWORD'];
$dbname = $_ENV['DATABASE'];

// // Create connection
$conn = mysqli_connect($servername,	$username, $password, $dbname);
// $conn = mysqli_connect('mysql://root:@localhost/print_shop');
#mysql --host=us-cdbr-east-05.cleardb.net --user=be0972af7150ad --password=59a4b058 --reconnect heroku_967d9f6736b7fab

if (!$conn) {
	die("Connection failed: " .mysqli_connect_error());
}

// echo "Connected successfully";
