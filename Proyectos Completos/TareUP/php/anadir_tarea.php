<?php

include('../bbdd.php');
include('../privilegios.php');

if(isset($_POST['textoTarea'])){
 
    $tarea = $_POST['textoTarea'];

    echo $tarea;
    
    $consulta=" SELECT id FROM `Usuarios` WHERE usuario = '$usuario'";

    $salidaConsulta = mysqli_query($conexion,$consulta); 

   
    while ( $mostrar=mysqli_fetch_row($salidaConsulta)) {

         $idUsuario = $mostrar[0];

        }

    $consulta="INSERT INTO Tareas (idUsuario, id, estadoTarea, acabaTarea, textoTarea) 
        VALUES ('$idUsuario', NULL, 'Pendiente', '0', '$tarea')"; 

    $salidaBBDD = mysqli_query($conexion,$consulta); 

    if(!$salidaBBDD){
        die('Error al insertar tarea');
    }

    echo "Tarea Insertada";
 
}

?>