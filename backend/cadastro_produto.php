<?php

include('validar_sessao_backend.php');
include('conexao.php');

//confere se existe a categoria no banco de dados
$sql = "select * from categoria where nmCategoria = ?";

$stmt = $con->prepare($sql);
$stmt->bindValue(1, trim($_POST['categoria']));
$stmt->execute();

if( $stmt->rowCount() == 0 ){

    header('Content-type:application/json');

    echo json_encode([
        'status'=>'error',
        'resposta'=>'Categoria não encontrada...'
    ]);

    die;

}

//caso exista categoria, segue o cadastro do produto
$cdCategoria = $stmt->fetchAll()[0]['cdCategoria'];

$sql = "insert into produto (nmProduto,descProduto,valor,qtde,cdCategoria) values (?,?,?,?,?)";

$stmt = $con->prepare($sql);

$stmt->bindValue(1, trim($_POST['nome']));
$stmt->bindValue(2, trim($_POST['descricao']));
$stmt->bindValue(3, trim($_POST['valor']));
$stmt->bindValue(4, trim($_POST['quantidade']));
$stmt->bindValue(5, $cdCategoria);


$stmt->execute();

header('Content-type:application/json');

if( $stmt->rowCount() > 0 ){

    echo json_encode([
        'status'=>'success',
        'resposta'=>'Cadastro concluído com sucesso...'
    ]);

    die;

}else{

    echo json_encode([
        'status'=>'error',
        'resposta'=>'Não foi possível concluir o cadastro...'
    ]);

    die;

}