<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);


include ('../bbdd.php');
include ('../privilegios.php');

?>


<h2>Buscar Por Usuarios AQUI</h2>
<form id="form_usuario" >
<input type="search" id="buscar_usuario" placeholder="Buscar Usuario">
</form>
<div id="usuarios_encontrados" class="lista_usuarios">
</div>    
<h2 id="Edicion_Usuario">Tareas</h2>

<div id="tareas_encontradas">


              
                  <ul id="categoria_tareas">
                  <li><a>Todas</a></li>
                  <li><a>Aprobado</a></li>
                  <li><a>Pendiente</a></li>
                  <li><a>Denegado</a></li>
                  <li><a>Finalizado</a></li>
                  <li><a>Sin Finalizar</a></li>
                  </ul>

                 <ul id="lista_tareas" class="lista_tareas"></ul>    
    </div>


          


<script src="js/tareas.js"></script>