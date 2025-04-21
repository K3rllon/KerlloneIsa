<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quarta questão</title>
</head>
<body>
    <?php
        $nomedovendedor = "Reginaldo";
        $salario = 1518;
        $vendasdomes = 600;
        $comissao = $vendasdomes * 0.15;
        $salariofinal = $salario + $comissao;
        echo "<strong>NOME DO VENDEDOR: </strong>" .$nomedovendedor. "<br>";
        echo "<strong>SALÁRIO: </strong>" .$salario. "<br>";
        echo "<strong>COMISSÃO: </strong>" .$comissao. "<br>";
        echo "<strong>SALÁRIO FINAL: </strong>" .$salariofinal. "<br>";
    ?>
</body>
</html>