<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);

include('../bbdd.php');
include('../privilegios.php');

$textoTarea = $_POST['textoTarea'];

if(isset($_POST['textoTarea'])){
    echo $textoTarea;

    $consulta="UPDATE Tareas
    SET Tareas.acabaTarea = 1
    WHERE Tareas.textoTarea = '$textoTarea'"; 

$salidaBBDD = mysqli_query($conexion,$consulta); 
}


?>