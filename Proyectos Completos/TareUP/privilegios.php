<?php 

    session_start();

    $usuario = $_SESSION['usuario'];
    $usuario = addslashes($usuario);
    $usuario = strip_tags($usuario);



    $consulta="SELECT Admin FROM Usuarios where usuario='$usuario'"; 
    $resultado=mysqli_query($conexion,$consulta);   
    
    $fia=mysqli_fetch_row($resultado);
    if(!$fia[0]){
        $_SESSION['privilegios'] = 'Usuario';
    }else{
        $_SESSION['privilegios'] = 'Administrador';
    } ;

    $privilegios =  $_SESSION['privilegios'];

  

?>