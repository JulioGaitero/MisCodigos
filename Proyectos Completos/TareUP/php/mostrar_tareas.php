<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);


include ('../bbdd.php');
include ('../privilegios.php');

$consulta=" SELECT Tareas.textoTarea, Tareas.estadoTarea, Tareas.acabaTarea FROM Tareas 
                       INNER JOIN Usuarios
                       ON Tareas.idUsuario = Usuarios.id
                       WHERE Usuarios.usuario = '$usuario'"; 

$resultado = mysqli_query($conexion,$consulta);  


if(!$resultado){
    die('Conexion fallida');
}

$json = array();

while($filaResultado = mysqli_fetch_array($resultado)){
    $json[] = array(
        'acabaTarea' => $filaResultado['acabaTarea'],
        'textoTarea' => $filaResultado['textoTarea'],
        'estadoTarea' => $filaResultado['estadoTarea']
      );
}

$jsonString = json_encode($json);
echo $jsonString;


?>
