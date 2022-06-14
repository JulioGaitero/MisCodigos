<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Calculadora PHP</title>
</head>
<body>
        <img id="logo" src="img/logo.png" alt="fantasma">
        <form id="principal" action="suma.php" method="get">
        <h1>SUMA PHP</h1>
        <input type="text" name="suma1" value="" placeholder="Inserta un número">
        <input type="text" name="suma2" value="" placeholder="Inserta un número">
        <input type="submit" name="" value="Sumar">
        <output type="number" name="">

    </form>
</body>
</html>
<?php
if(isset($_GET['numero1']) && isset($_GET['numero2']) && is_numeric($_GET['numero1']) && is_numeric($_GET['numero2']));{
    $suma1 = $_GET['suma1'];
    $suma2 = $_GET['suma2'];
    echo $suma1 + $suma2;

}
?>