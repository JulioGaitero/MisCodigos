<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Tabla de Multiplicar</title>
</head>
<body>
    <img src="logo.png" alt="logo"/>
    <div id="principal">
        <h1>GENERADOR DE TRABLAS DE MULTIPLICAR</h1>
        <form id="tabla" action="tabla.php" method="get">
            <input type="number" name="tabla" placeholder="Inserta un numero"  />
            <input type="submit" value="Enviar"/>
        </form>
</body>
</html>
<?php
if(isset($_GET['tabla']) && is_numeric($_GET['tabla'])){
    echo '<h2>TABLA DE MULTIPLICAR DEL '.$_GET['tabla'].'</h2>';
    echo '<div id="tabla">';
    echo '<ul>'; 
    for ($i=1; $i <= 10; $i++) { 
        echo '<li>';
        echo $_GET['tabla'];
        echo '</li>';
    } 
    echo '</ul>'; 

    echo '<ul>'; 
    for ($i=1; $i <= 10; $i++) { 
        echo '<li>';
        echo 'x';
        echo '</li>';
    } 
    echo '</ul>'; 

    echo '<ul>'; 
    for ($i=1; $i <= 10; $i++) { 
        echo '<li>';
        echo $i;
        echo '</li>';
    } 
    echo '</ul>'; 

    echo '<ul>'; 
    for ($i=1; $i <= 10; $i++) { 
        echo '<li>';
        echo '=';
        echo '</li>';
    } 
    echo '</ul>'; 

    echo '<ul>'; 
    for ($i=1; $i <= 10; $i++) { 
        echo '<li>';
        echo $i * $_GET['tabla'];
        echo '</li>';
    } 
    echo '</ul>'; 
    echo '</div>';
    echo '</div>';
}
?>