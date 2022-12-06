<?php

include('conexao.php');

$sql = "select * from usuario where emailUsuario = ? and dsSenha = ? limit 1";

$stmt = $con->prepare($sql);

$stmt->bindValue(1, trim($_POST['email']));
$stmt->bindValue(2, trim($_POST['password']));

$stmt->execute();

header('Content-type:application/json');

if( $stmt->rowCount() > 0 ){
    
    $_SESSION[ 'dados_usuario'] = $stmt->fetchAll()[0];
    $_SESSION['conectado'] = true;

    echo json_encode([
        'status'=>'success',
        'resposta'=>'Usuário Logado com sucesso!!'
    ]);

    die;

}else{

    echo json_encode([
        'status'=>'error',
        'resposta'=>'Usuário não localizado, ou algum erro pode ter ocorrido ao tentar se conectar com banco de dados...'
    ]);

    die;
    
}