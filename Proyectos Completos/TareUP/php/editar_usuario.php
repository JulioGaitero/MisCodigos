<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);


include ('../bbdd.php');
include ('../privilegios.php');

$usuario_post = $_POST['usuario'];



$consulta=" SELECT usuario, clave, Admin, foto FROM Usuarios 
                       WHERE usuario = '$usuario_post '"; 

                    

$resultado = mysqli_query($conexion,$consulta);  

if(!$resultado){
    die('Conexion fallida');
}

$json = array();

while($filaResultado = mysqli_fetch_array($resultado)){
    $json[] = array(
        'usuario' => $filaResultado['usuario'],
        'clave' => $filaResultado['clave'],
        'foto' => $filaResultado['foto'],
        'Admin' => $filaResultado['Admin']
      );
}

$jsonString = json_encode($json);
echo $jsonString;

?>