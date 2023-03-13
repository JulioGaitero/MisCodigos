<?php

include('../bbdd.php');

include('../privilegios.php');

$busqueda = $_POST['busqueda'];

if(!empty($busqueda)){

    $consulta=" SELECT Tareas.textoTarea, Tareas.estadoTarea, Tareas.acabaTarea FROM Tareas 
    INNER JOIN Usuarios
    ON Tareas.idUsuario = Usuarios.id
    WHERE UPPER(Tareas.textoTarea) LIKE '%$busqueda%' AND
    Usuarios.usuario =  '$usuario'
                       "; 
   
    $resultadoBusqueda = mysqli_query($conexion,$consulta);

    $json = array();

    if(!$resultadoBusqueda){
        die("error");
    }

    while($filaBusqueda = mysqli_fetch_array($resultadoBusqueda)){
        $json[] = array(
            'acabaTarea' => $filaBusqueda['acabaTarea'],
            'textoTarea' => $filaBusqueda['textoTarea'],
            'estadoTarea' => $filaBusqueda['estadoTarea']
          );
    }

    $jsonString = json_encode($json);
    echo $jsonString;
    }

?>
