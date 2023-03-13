<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);


include ('../bbdd.php');
include ('../privilegios.php');

?>

           <h2>Buscar Usuarios</h2>
           <form id="form_usuario" >
           <input type="search" id="buscar_usuario" placeholder="Buscar Usuario">
           </form>
           <div id="usuarios_encontrados" class="lista_usuarios">
           </div>    
           <h2 id="Edicion_Usuario">Crear Usuario</h2>

           <form id="crear_usuario" action="registrar_usuario.php" method="post" enctype="multipart/form-data">
            
            <input type="text" id="nombre_usuario" name="usuario" placeholder="Nombre de Usuario"/>
        
            <input type="password" id="contrasena" name="contrasena" placeholder="Contraseña"/>
           
            <input type="password" id="contrasena2" name="contrasena2" placeholder="Repetir Contraseña"/>

            <input type="file" id="imagen" name="imagen" placeholder="Imagen de Perfil"/>

            <div id="usuarios_abajo">
            <label id="label"> 
            <input id ="es_admin" type="checkbox" value="si" name="es_admin"> Administrador
            </label>
            <br/>
            <div id="botones_usuario">
            <a id="boton_registrar" href ="#">Registrar Usuario</a>
            <a id="boton_borrar" href ="#">Borrar Usuario</a>
            <a id="boton_editar" href ="#">Editar Usuario</a>
            </div>
            <div>
           </form>
           
           


           <script src="js/usuarios.js"></script>