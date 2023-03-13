<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);

include('../bbdd.php');
include('../privilegios.php');

if( $_POST['categoriaEnviada'] == "Todas"){

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


}

elseif( $_POST['categoriaEnviada'] == "Finalizado"){

    $consulta=" SELECT Tareas.textoTarea, Tareas.estadoTarea, Tareas.acabaTarea FROM Tareas 
    INNER JOIN Usuarios
    ON Tareas.idUsuario = Usuarios.id
    WHERE Usuarios.usuario = '$usuario' AND Tareas.acabaTarea = 1"; 

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

}

elseif( $_POST['categoriaEnviada'] == "Sin Finalizar"){

    $consulta=" SELECT Tareas.textoTarea, Tareas.estadoTarea, Tareas.acabaTarea FROM Tareas 
    INNER JOIN Usuarios
    ON Tareas.idUsuario = Usuarios.id
    WHERE Usuarios.usuario = '$usuario' AND Tareas.acabaTarea = 0"; 

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

}




elseif( $_POST['categoriaEnviada'] == "Aprobado" || "Pendiente" || "Denegado"){
   
    $busqueda = $_POST['categoriaEnviada'];
   
   
    if(!empty($busqueda)){
   
       $consulta=" SELECT Tareas.textoTarea, Tareas.estadoTarea, Tareas.acabaTarea FROM Tareas 
       INNER JOIN Usuarios 
       ON Tareas.idUsuario = Usuarios.id 
       WHERE Tareas.estadoTarea = '$busqueda' AND Usuarios.usuario = '$usuario'";
       
       $resultadoBusqueda=mysqli_query($conexion,$consulta);   
   
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
   
   }

?>