<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Calculo Areas</title>
</head>
<body>
    <div id="principal">

    <h1>CALCULADORA DE AREAS</h1>
    <form action="calculo.php" method="post">

    <div class="centrado">
        <input type="radio" name="figura" value="triangulo" >
            <span>TRIANGULO</span>
    </div>        
            <br/>
            <input type="number" id="base" name="base" placeholder="Base" />
            <br/>
            <input type="number" id="altura" name="altura" placeholder="Altura" />
            <br/>
    <div class="centrado">        
        <input type="radio" name="figura" value="cuadrado" >

            <span>CUADRADO</span>
            </div>         
            <br/>  
            <input type="number" id="lado" name="lado" placeholder="Lado"/>
            <br/>
            <div class="centrado">    
        <input type="radio" name="figura" value="circulo" >
            <span>CIRCULO</span>
            </div>  
                <input type="number" id="radio" name="radio" placeholder="Radio"/>
            <br/>  
           
        <input type="submit" value="Calcular">
    </form>

    
    <?php
        session_start();
        if(isset($_SESSION['resultado'])){
            echo '<p id="resultado">El resultado es: ' . $_SESSION["resultado"] . '<p>';
            unset($_SESSION['resultado']);
        }
    ?>
</div>


</body>
</html>