<?php

include('../bbdd.php');
include('../privilegios.php');

if(isset($_POST['usuario'])){
 
    $usuario = $_POST['usuario'];
    
    $consulta="DELETE Usuarios FROM Usuarios
    WHERE Usuarios.usuario = '$usuario'";

    $salidaBBDD = mysqli_query($conexion,$consulta); 

    if(!$salidaBBDD){
        die('Error al insertar tarea');
    }
 
}

echo "borrado";


?>