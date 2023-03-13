<?php

include('../bbdd.php');
include('../privilegios.php');

if(isset($_POST['textoTarea'])){
 
    $tarea = $_POST['textoTarea'];
    
    $consulta="DELETE Tareas FROM Tareas INNER JOIN Usuarios
    ON Tareas.idUsuario = Usuarios.id
    WHERE Usuarios.usuario = '$usuario' AND Tareas.textoTarea = '$tarea'";

      
    $salidaBBDD = mysqli_query($conexion,$consulta); 



    if(!$salidaBBDD){
        die('Error al insertar tarea');
    }
 
}

?>
