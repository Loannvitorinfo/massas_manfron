<?php
session_start();

header('Content-type:application/json');

if( isset($_SESSION['conectado']) && boolval($_SESSION['conectado']) == true ){
    echo json_encode([
        'status'=>'success',
        'resposta'=>'Usuário logado.'
    ]);
}else{
    echo json_encode([
        'status'=>'error',
        'resposta'=>'Usuário não está logado.'
    ]);
}