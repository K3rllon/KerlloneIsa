<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sexta questão</title>
</head>
<body>
    <?php
    $A = 2;
    $B = 3;
    echo "antes: A = " .$A. ", B = " .$B. "<br>";   
    $valordeA = $A; 
    $A = $B;
    $B = $valordeA;
    echo "Com valor trocado A = " .$A. ", B = " .$B;
    ?>
</body>
</html>