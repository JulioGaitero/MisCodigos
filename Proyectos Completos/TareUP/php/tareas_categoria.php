<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);

include('../bbdd.php');
include('../privilegios.php');

if( $_POST['categoriaSelec'] == "Todas"){

    $consulta=" SELECT Tareas.textoTarea, Tareas.estadoTarea, Tareas.acabaTarea FROM Tareas ";

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

elseif( $_POST['categoriaSelec'] == "Finalizado"){

$consulta=" SELECT Tareas.textoTarea, Tareas.estadoTarea, Tareas.acabaTarea FROM Tareas 
WHERE Tareas.acabaTarea = 1";

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

elseif( $_POST['categoriaSelec'] == "Sin Finalizar"){

    $consulta=" SELECT Tareas.textoTarea, Tareas.estadoTarea, Tareas.acabaTarea FROM Tareas 
    WHERE Tareas.acabaTarea = 0";
    

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


elseif( $_POST['categoriaSelec'] == "Aprobado" || "Pendiente" || "Denegado"){
   
    $busqueda = $_POST['categoriaSelec'];
   
   
    if(!empty($busqueda)){
   

       $consulta=" SELECT Tareas.textoTarea, Tareas.estadoTarea, Tareas.acabaTarea FROM Tareas 
       WHERE Tareas.estadoTarea = '$busqueda'";
       
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