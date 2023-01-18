<?php
error_reporting(E_ALL);
ini_set("display_errors",1);
try {
    $conn = new PDO("mysql:host=192.168.3.147; port=3307; dbname=Contatos", "root", "123456");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Conexão realizada com sucesso <br>";
} catch(PDOException $e) {
    die("Falha na conexão: " . $e->getMessage());
}

