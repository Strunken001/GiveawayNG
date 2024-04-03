<?php

$hostname = $_ENV['HOSTNAME'];
$username = $_ENV['USERNAME'];
$password = $_ENV['PASSWORD'];
$database = $_ENV['DATABASE'];

$db = mysqli_connect($hostname, $username, $password, $database);