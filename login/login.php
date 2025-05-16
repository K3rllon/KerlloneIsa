<?php
    session_start()
    try {
        $conexaologin = new PDO("mysql:host=localhost;dbname=nomedobancodedados;charset=utf8mb4generalci","root","", [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            POD::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    } catch (PDOException $erro) {
        echo "Erro e conexão: " . $erro->getMessage();
    };

    

