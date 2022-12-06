<?php

include('validar_sessao_backend.php');
include('conexao.php');

if( isset($_POST) && isset($_POST['acao']) == 'avaliar' ){

    $cdUsuario = $_SESSION['dados_usuario']['cdUsuario'];
    $comentario = $_POST['comentario'];
    $id = $_POST['id'];

    $sql = "insert into avaliacoes (cdProduto,cdUsuario,comentario) values (?,?,?)";

    $stmt = $con->prepare($sql);
    $stmt->bindValue(1, $id);
    $stmt->bindValue(2, $cdUsuario);
    $stmt->bindValue(3, $comentario);

    $stmt->execute();

    header('Content-type:application/json');

    if( $stmt->rowCount() > 0 ){

        echo json_encode([
            'status'=>'success',
            'resposta'=>'Avaliação concluída com sucesso'
        ]);

        die;

    }else{

        echo json_encode([
            'status'=>'error',
            'resposta'=>'Não foi possível concluir a avaliação...'
        ]);

        die;

    }

}else if(isset($_POST) && isset($_GEt['acao']) == 'listar'){

}