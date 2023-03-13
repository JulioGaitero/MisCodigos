
<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="estilos/app.css">
</head>

<body>
    <div id="contenedor">
        <div id="usuario">
            <?php
                include('bbdd.php');
                include('privilegios.php');
                $usuario = $_SESSION["usuario"];

                if(!isset($usuario)){
                    header("Location: index.php");
                    }
                                              
                $consulta=" SELECT foto FROM Usuarios 
                WHERE usuario = '$usuario'"; 

                $resultado=mysqli_query($conexion,$consulta);   
       
                while ( $mostrar=mysqli_fetch_row($resultado)) {

                echo '<img id="foto_perfil" src="img/fotos_perfil/'.$mostrar[0].'" />';
      
                
                }

    
              

                echo  "<h1>".$usuario."</h1>" . "<p>".$privilegios."</p>";

                echo '<button id="cerrar_sesion">Cerrar</button>';

              

        
                if ($privilegios == "Administrador"){
                    echo '<h3 id="administracion"> Administración</h3>';
                    echo '<ul id="Menu_administrador">
                          <li><img src="img/iconos/inicio.svg"/><a href="app.php"  class="boton_administracion">Inicio</a></li>
                          <li><img src="img/iconos/usuarios.svg"/><a href="#" id="boton_usuarios" class="boton_administracion">Usuarios</a></li>
                          <li><img src="img/iconos/tareas.svg"/><a href="#" id="boton_tareas" class="boton_administracion">Tareas</a></li>
                          <li><img src="img/iconos/calendario.svg"/><a href="#" id="boton_turnos" class="boton_administracion">Turnos</a></li>
                          </ul>';
                }

             ?>
        </div>

        <div id="tareas">
        <h2>Buscar Tarea</h2>
           <form id="buscar_tareas">
            <input type="search" id="input_buscar" placeholder="Buscar la tarea">
            <button type="submit">Buscar</button>
            </form>
            <ul id="tareas_encontradas" class="lista_tareas">
            </ul>    
            <h2>Lista de Tareas</h2>

          
                                    
                  <ul id="categoria_tareas">
                  <li><a>Todas</a></li>
                  <li><a>Aprobado</a></li>
                  <li><a>Pendiente</a></li>
                  <li><a>Denegado</a></li>
                  <li><a>Finalizado</a></li>
                  <li><a>Sin Finalizar</a></li>
                  </ul>
              
                  <div id="lista_tareas" class="lista_tareas">

            </div>
                    

<h2>Añadir Tarea</h2>
           <form id="enviar_tareas">
            <input id="input_tareas" placeholder="Añadir la tarea">
            <button type="submit">Añadir</button>
            </form>
        </div>
<div id="barra_turnos">
   
<h2>Turno Semanal</h2>  
<div id="contenedor_mananas">
<h3 class="titulos_turnos">Turno de Mañanas</h3>
<ul id="mostrar_manana"></ul>  
            </div>
            <div id="contenedor_tardes">
<h3 class="titulos_turnos">Turno de Tardes</h3>
<ul id="mostrar_tardes"></ul>  
            </div>
            <div id="contenedor_noches">
<h3 class="titulos_turnos">Turno de Noches</h3>
<ul id="mostrar_noches"></ul>  
</div>
<div id="contenedor_libres">
<h3 class="titulos_turnos">Turno Libre</h3>
<ul id="mostrar_libres"></ul>  
</div>    
    </div>

   

    
    <script src="libs/jquery-3.6.1.min.js"></script>
    <script src="script.js"></script>
   
 
</body>
</html>

