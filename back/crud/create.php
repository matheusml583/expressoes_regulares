<?php

include "../db/conn.php";
var_dump($_POST);
die();

$dados = json_decode(file_get_contents('php://input'), true);
$nome = $dados['nome'];
$telefone = $dados['telefone'];
$email = $dados['email'];
$sexo = $dados['sexo'];

if (!$nome || !$telefone || !$email || !$sexo) {
    die("Por favor, preencha todos os campos do formulário.");
}

$stmt = $conn->prepare("INSERT INTO Usuarios (nome) VALUES (:nome)");
$stmt->bindValue(':nome', $nome);
$stmt->execute();

$stmt = $conn->prepare("INSERT INTO Usuarios (telefone, email, sexo) VALUES (:telefone, :email, :sexo)");
$stmt->bindValue(':telefone', $telefone);
$stmt->bindValue(':email', $email);
$stmt->bindValue(':sexo', $sexo);
$stmt->execute();
