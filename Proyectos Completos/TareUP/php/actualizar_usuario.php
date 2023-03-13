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
        };

      if (!file_exists($_FILES['imagen']['tmp_name']) || !is_uploaded_file($_FILES['imagen']['tmp_name'])) 
    {
        $consulta="UPDATE Usuarios SET usuario = '$user', clave = '$contrasena', Admin = '$admin' WHERE usuario = '$user'"; 
        $salidaBBDD = mysqli_query($conexion,$consulta);
        echo "hola";
        
    } else {

        if ($foto["type"] == "image/jpg" or $foto["type"] == "image/jpeg" or $foto["type"] == "image/png"){
            $nom_encriptado=md5($foto["tmp_name"]).".png";
            $ruta="../img/fotos_perfil/".$nom_encriptado;
           move_uploaded_file($foto["tmp_name"],$ruta);
           
           $consulta="UPDATE Usuarios SET usuario = '$user', clave = '$contrasena', Admin = '$admin', foto = '$nom_encriptado' WHERE usuario = '$user'"; 
            
           $salidaBBDD = mysqli_query($conexion,$consulta);
           echo ("hola2");
        }

        

    }

}else{
    echo "Las contraseñas no coinciden";
}
    ?>
    