<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);


include ('../bbdd.php');
include ('../privilegios.php');

$consulta=" SELECT Turno.usuario, Turno.turno, Usuarios.foto FROM Turno 
                       INNER JOIN Usuarios
                       ON Turno.idUsuario = Usuarios.id"; 

$resultado = mysqli_query($conexion,$consulta);  


if(!$resultado){
    die('Conexion fallida');
}

$json = array();

while($filaResultado = mysqli_fetch_array($resultado)){
    $json[] = array(
        'usuario' => $filaResultado['usuario'],
        'turno' => $filaResultado['turno'],
        'foto' => $filaResultado['foto']
      );
}

$jsonString = json_encode($json);
echo $jsonString;


?>