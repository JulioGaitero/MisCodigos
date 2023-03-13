<?php

$usuario=$_POST['usuario'];
$clave=$_POST['clave'];
include('bbdd.php');

$consulta="SELECT * FROM Usuarios where usuario='$usuario' and clave='$clave'";
$resultado=mysqli_query($conexion,$consulta);

$filas=mysqli_num_rows($resultado);

if($filas){
    session_start();
    $_SESSION['usuario']=$usuario;
    header("location:app.php");
  

}else{
    ?>
    <?php
    include("index.php");

  ?>
  <p id="error">Error de Autentificación</p>
  <?php
}

mysqli_free_result($resultado);
mysqli_close($conexion);

