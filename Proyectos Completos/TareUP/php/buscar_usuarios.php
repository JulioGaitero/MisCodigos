<?php

include('../bbdd.php');

include('../privilegios.php');

$busqueda = $_POST['busqueda'];

if(!empty($busqueda)){

    $consulta=" SELECT usuario, foto FROM Usuarios 
    WHERE UPPER (usuario) LIKE '%$busqueda%'";
   
    $resultadoBusqueda = mysqli_query($conexion,$consulta);

    $json = array();

    if(!$resultadoBusqueda){
        die("error");
    }

    while($filaBusqueda = mysqli_fetch_array($resultadoBusqueda)){
        $json[] = array(
            'usuario' => $filaBusqueda['usuario'],
            'foto' => $filaBusqueda['foto']
          );
    }

    $jsonString = json_encode($json);
    echo $jsonString;
    }

?>
