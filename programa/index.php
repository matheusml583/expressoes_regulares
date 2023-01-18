<?php

include('conn.php');

function select($conn, $search){
    $sql = 'SELECT u.*, d.email, d.telefone, d.sexo FROM Dados as d LEFT JOIN Usuários as u on u.id = d.id_usuarios WHERE u.nome LIKE "%' . $search . '%" OR d.email LIKE "%' . $search . '%" OR d.telefone LIKE "%' . $search . '%";';
    $resultado = $conn->prepare($sql);
    $resultado->execute();
    $linhas = $resultado->fetchAll(PDO::FETCH_ASSOC);
    return ($linhas);
}

function main($conn){
    $search = "lin";
    $linhas = select($conn, $search);
    var_dump($linhas);
    $matches = exp_reg($linhas, $search);
    // var_dump($matches);
    $ordem = percentage($matches, $search);
    // var_dump($ordem);
}

function exp_reg($lista, $search){
    $resposta = [];
    $padrao = "/" . $search . "/i";

    foreach($lista as $itens){
        foreach($itens as $item){
             if(preg_match($padrao, $item)){
                $resposta[] = $item;
                // echo $item . "<br>";
            }
        }
    }
    return $resposta;
}

function percentage($linhas, $search){
    $posicoes = [
        "nome",
        "email",
        "telefone"
    ];
    $ordem = [];

    foreach ($linhas as $linha) {
        $porcentagem = strlen($search) * 100 / strlen($linha);
        $ordem[] = $porcentagem;
        // echo $porcentagem . "<br>";
    }
    return $ordem;
}

main($conn);
// $ordem[] = $linha['nome'] . " - " . $linha['email'] . " - " . $linha['telefone'] . " - " . $linha['sexo'] . "<br>";