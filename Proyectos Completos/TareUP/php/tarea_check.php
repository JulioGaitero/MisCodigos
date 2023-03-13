<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);

include('../bbdd.php');
include('../privilegios.php');

$textoTarea = $_POST['textoTarea'];

if(isset($_POST['textoTarea'])){
    echo $textoTarea;

    $consulta="UPDATE Tareas
    INNER JOIN Usuarios ON Tareas.idUsuario = Usuarios.id
    SET Tareas.acabaTarea = 1
    WHERE Usuarios.usuario = '$usuario' AND Tareas.textoTarea = '$textoTarea'"; 

$salidaBBDD = mysqli_query($conexion,$consulta); 
}


?>