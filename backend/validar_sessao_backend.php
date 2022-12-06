<?php

session_start();

if( !(isset($_SESSION['conectado']) && boolval($_SESSION['conectado']) == true) ){

    header('Content-type:application/json');

    echo json_encode([
        'status'=>'error',
        'resposta'=>'Usuário deve estar logado para acessar o recurso...'
    ]);

}