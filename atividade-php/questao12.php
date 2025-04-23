<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Décima eguna questão</title>
</head>
<body>
    <?php
        $custodefabrica =77500.00;
        $percentualdostribuidor = 0.28;
        $impotos = 0.45;
        $custo1 = $custodefabrica * $impotos;
        $custofinal = $custo1 * $percentualdostribuidor;
        echo "<strong>O valor do carro é de </strong>" .$custofinal;
    
    ?>
</body>
</html>