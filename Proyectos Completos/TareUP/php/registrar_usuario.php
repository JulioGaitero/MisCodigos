<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);
    include('../bbdd.php');

    include('../privilegios.php');
    
    $user = $_POST["usuario"];
    $contrasena = $_POST["contrasena"];
    $contrasena2 = $_POST["contrasena2"];
    $foto = $_FILES["imagen"];
    
    if ($contrasena == $contrasena2){
    if(isset($_POST['es_admin'])){
        $admin = 1;
    }else {
        $admin = 0;
    }   

    $consulta = "SELECT usuario FROM Usuarios 
            WHERE UPPER (usuario) LIKE '$user'";

$salidaBBDD = mysqli_query($conexion,$consulta); 
    
$numero_filas = mysqli_num_rows($salidaBBDD);

if ($numero_filas > 0){
    echo "El usuario ya existe";
}else { 

    if ($foto["type"] == "image/jpg" or $foto["type"] == "image/jpeg" or $foto["type"] == "image/png"){
         $nom_encriptado=md5($foto["tmp_name"]).".png";
         $ruta="../img/fotos_perfil/".$nom_encriptado;
        move_uploaded_file($foto["tmp_name"],$ruta);
        
        $consulta="INSERT INTO Usuarios(usuario, clave, Admin, foto) 
        VALUES ('$user', '$contrasena', '$admin', '$nom_encriptado')"; 
 
        $salidaBBDD = mysqli_query($conexion,$consulta);

        $consulta=" SELECT id FROM Usuarios WHERE Usuarios.usuario = '$user'"; 

        $usuario = mysqli_query($conexion,$consulta);

        if (mysqli_num_rows($usuario) > 0) {
            while($rowData = mysqli_fetch_array($usuario)){
                  $idUsuario = $rowData["id"];
            }
        }

        $consulta="INSERT INTO Turno(idUsuario, turno, usuario) 
        VALUES ('$idUsuario', 'Sin Asignar', '$user')"; 

        mysqli_query($conexion,$consulta);

    }
}}else{
    echo "Las contraseñas no coinciden";
}
    ?>
    