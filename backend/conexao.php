<?php

session_start();

$user = 'fer';
$pass = 'fer';

try{
    $con = new PDO('mysql:host=localhost;dbname=massas_mafron', $user, $pass);
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $err){
    $con = null;
}

//verifica se conexão foi bem sucedida
if( is_null($con) ){
    header('Content-type:application/json');
    echo json_encode([
        'status'=>'error',
        'resposta'=>''
    ]);
    die;    
}