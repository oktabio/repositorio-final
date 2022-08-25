<?php

$server = 'localhost';
$email = 'root';
$contraseña = '';
$database = 'registro_ingreso';

try {
  $conn = new PDO("mysql:host=$server;dbname=$database;", $email, $contraseña);
} catch (PDOException $e) {
  die('Connection Failed: ' . $e->getMessage());
}

?>