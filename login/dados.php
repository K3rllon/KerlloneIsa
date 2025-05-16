<?php
    require_once 'login.php';
    if(isset($_POST['username'], $_POST['email'], $_POST['senha'])) {
        $username = $_POST['username'];
        $email = $_POST['email'];
        $senha = $_POST['senha'];

        $dados = $conexaologin->prepare("INSERT INTO usuarios (username, email, senha) VALUES (:username, :email, :senha)");
        $dados->bindParam(':username', $username);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':senha', password_hash($senha, PASSWORD_DEFAULT));

        if($stmt->execute()) {
            echo "Usuário cadastrado com sucesso!";
        } else {
            echo "Erro ao cadastrar usuário.";
        }
    } else {
        echo "Preencha todos os campos.";

    }
?>