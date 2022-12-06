<?php

include('validar_sessao_backend.php');
include('conexao.php');

//caso os parâmetros para pesquisar produtos não tenham sido passados
if( !(isset($_GET['tipo_pesquisa']) && isset($_GET['param'])) ){

    header('Content-type:application/json');

    echo json_encode([
        'status'=>'error',
        'resposta'=>'Necessário informar o tipo de pesquisa e o parâmetro para pesquisa...'
    ]);

    die;

}

if( $_GET['tipo_pesquisa'] == 'nome_categoria' ){
    
    $sql = "select * from categoria where nmCategoria = ?";
    
    $stmt = $con->prepare($sql);
    $stmt->bindValue(1, trim($_GET['param']));
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

    $sql = "
        select * from categoria c inner join produto p
        on(c.cdCategoria = p.cdCategoria)
        where c.cdCategoria = ?
    ";

    $stmt = $con->prepare($sql);
    $stmt->bindValue(1, $cdCategoria);
    $stmt->execute();

    if( $stmt->rowCount() > 0 ){

        header('Content-type:application/json');

        echo json_encode([
            'status'=>'success',
            'resposta'=>'Registros Localizados...',
            'registros'=>$stmt->fetchAll()
        ]);
    
        die;
    
    }else{
    
        header('Content-type:application/json');

        echo json_encode([
            'status'=>'error',
            'resposta'=>'Não foi possível localizar registros...'
        ]);
    
        die;
    
    }

}else if( $_GET['tipo_pesquisa'] == 'nome_produto' ){

    $sql = "
        select * from categoria c inner join produto p
        on(c.cdCategoria = p.cdCategoria)
        where p.nmProduto like ?
    ";

    $stmt = $con->prepare($sql);
    $stmt->bindValue(1, "%".$_GET['param']."%");
    $stmt->execute();

    if( $stmt->rowCount() > 0 ){

        header('Content-type:application/json');

        echo json_encode([
            'status'=>'success',
            'resposta'=>'Registros Localizados...',
            'registros'=>$stmt->fetchAll()
        ]);
    
        die;
    
    }else{
    
        header('Content-type:application/json');

        echo json_encode([
            'status'=>'error',
            'resposta'=>'Não foi possível localizar registros...'
        ]);
    
        die;
    
    }

}