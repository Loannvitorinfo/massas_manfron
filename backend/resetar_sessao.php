<?php
session_start();

unset($_SESSION['dados_usuario']);
unset($_SESSION['conectado']);

session_destroy();