<?php

include('../bbdd.php');
include('../privilegios.php');

if(isset($_POST['usuarioTarea'])){
 
    $usuarioTarea = $_POST['usuarioTarea'];  
    $usuarioTurno = $_POST['usuarioTurno'];  

    $consulta="UPDATE Turno
    SET turno = '$usuarioTurno'
    WHERE usuario = '$usuarioTarea'"; 

$salidaBBDD = mysqli_query($conexion,$consulta); 

    if(!$salidaBBDD){
        die('Error al insertar tarea');
    }

    echo "Tarea Insertada";
 
}
?>