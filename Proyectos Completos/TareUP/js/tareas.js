var usuarioSelec;
var categoriaSelec;

function buscarUsuario() {
  if ($("#buscar_usuario").val()) {
    let busqueda = $("#buscar_usuario").val();
    $.ajax({
      url: "php/buscar_usuarios.php",
      type: "POST",
      data: { busqueda: busqueda },
      success: function (respuesta) {
        let datosTareas = JSON.parse(respuesta);
        let plantilla = "";
        datosTareas.forEach((datosTareas) => {
          plantilla += `<div id="contenedor_perfil"><img class="foto_perfil" src=img/fotos_perfil/${datosTareas.foto} /><h4>${datosTareas.usuario}</h4></div>`;
        });
        $("#usuarios_encontrados").html(plantilla);
      },
    });
  }
}

$(document).on("click", ".foto_perfil", function () {
  $("#Edicion_Usuario").text("Tareas de Usuario");
  let usuarioTarea = $(this).next("h4").text();
   mostrarTareas3(usuarioTarea);
   return usuarioSelec = usuarioTarea;

});


function mostrarTareas3(usuarioTarea){
  $.ajax({
    url: "php/tareas_usuario.php",
    type: "POST",
    data: { usuarioTarea: usuarioTarea },
    success: function (respuesta) {
      let datosTareas = JSON.parse(respuesta);
      let plantilla = "";
      plantilla += ` <ul id="lista_tareas" class="lista_tareas">`;
      datosTareas.forEach((datosTareas) => {
        if (datosTareas.acabaTarea == 1) {
          if (datosTareas.estadoTarea == "Pendiente") {
            plantilla += `<li> <input class="marcar"  type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar3" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar3" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar3" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Aprobado") {
            plantilla += `<li> <input class="marcar"  type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="aprobado">${datosTareas.estadoTarea}</span><a class="borrar3" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar3" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar3" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Denegado") {
            plantilla += `<li> <input class="marcar"  type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="denegado">${datosTareas.estadoTarea}</span><a class="borrar3" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar3" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar3" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          }
        } else if (datosTareas.acabaTarea == 0) {
          if (datosTareas.estadoTarea == "Pendiente") {
            plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar3" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar3" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar3" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Aprobado") {
            plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="aprobado">${datosTareas.estadoTarea}</span><a class="borrar3" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar3" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aproba3r" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Denegado") {
            plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="denegado">${datosTareas.estadoTarea}</span><a class="borrar3" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar3" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar3" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          }
        }
      });
      plantilla += `</ul>`;
      $("#tareas_encontradas").html(plantilla);
    },
  });

}

$("#buscar_usuario").keyup(function (e) {
  buscarUsuario();
});

function mostrarTareas2() {
  $.ajax({
    url: "php/tareas_tareas.php",
    type: "GET",
    success: function (respuesta) {
      let datosTareas = JSON.parse(respuesta);

      let plantilla = "";
      datosTareas.forEach((datosTareas) => {
        if (datosTareas.acabaTarea == 1) {
          if (datosTareas.estadoTarea == "Pendiente") {
            plantilla += `<li> <input class="marcar" type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar2" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Aprobado") {
            plantilla += `<li> <input class="marcar" type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="aprobado">${datosTareas.estadoTarea}</span><a class="borrar2" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Denegado") {
            plantilla += `<li> <input class="marcar" type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="denegado">${datosTareas.estadoTarea}</span><a class="borrar2" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          }
        } else if (datosTareas.acabaTarea == 0) {
          if (datosTareas.estadoTarea == "Pendiente") {
            plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar2" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Aprobado") {
            plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="aprobado">${datosTareas.estadoTarea}</span><a class="borrar2" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Denegado") {
            plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="denegado">${datosTareas.estadoTarea}</span><a class="borrar2" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          }
        }
      });

      $("#lista_tareas").html(plantilla);
    },
  });
}

mostrarTareas2();

$(document).on("click", "#categoria_tareas li a", function () {
  let categoriaEnviada = $("#categoria_tareas li a:hover").text();
  categoriaSelec = categoriaEnviada;
   mostrarTareas4(categoriaSelec);
  return categoriaSelec;
  
});


function mostrarTareas4(categoriaSelec){
  $.ajax({
    url: "php/tareas_categoria.php",
    type: "POST",
    data: { categoriaSelec: categoriaSelec },
    success: function (respuesta) {
      let datosTareas = JSON.parse(respuesta);
      let plantilla = "";
      plantilla += ` <ul id="lista_tareas" class="lista_tareas">`;
      datosTareas.forEach((datosTareas) => {
        if (datosTareas.acabaTarea == 1) {
          if (datosTareas.estadoTarea == "Pendiente") {
            plantilla += `<li> <input class="marcar"  type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar4" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar4" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar4" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Aprobado") {
            plantilla += `<li> <input class="marcar"  type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="aprobado">${datosTareas.estadoTarea}</span><a class="borrar4" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar4" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar4" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Denegado") {
            plantilla += `<li> <input class="marcar"  type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="denegado">${datosTareas.estadoTarea}</span><a class="borrar4" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar4" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar4" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          }
        } else if (datosTareas.acabaTarea == 0) {
          if (datosTareas.estadoTarea == "Pendiente") {
            plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar4" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar4" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar4" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Aprobado") {
            plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="aprobado">${datosTareas.estadoTarea}</span><a class="borrar4" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar4" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar4" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Denegado") {
            plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="denegado">${datosTareas.estadoTarea}</span><a class="borrar4" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a><a class="denegar4" href="#"><img class="icono_listado" src="img/iconos/tareas_denegado.svg"></a><a class="aprobar4" href="#"><img class="icono_listado" src="img/iconos/tareas_aprobado.svg"></a></li>`;
          }
        }
      });
      plantilla += `</ul>`;
      $("#lista_tareas").innerHTML = ""
      $("#lista_tareas").html(plantilla);
    },
  });
  
}



$(document).on("click", ".marcar", function () {
  if ($(this).prop("checked")) {
    let textoTarea = $(this).next("p").text();

    $.post(
      "php/tareas_usuario_check.php",
      {
        textoTarea,
        
      },
      function (respuesta) {
        
      }
    );
  } else {
    let textoTarea = $(this).next("p").text();
    $.post(
      "php/tareas_usuario_uncheck.php",
      {
        textoTarea,
      },
      function (respuesta) {
      
      }
    );
  }
});

$(document).on("click", ".borrar2", function () {
  let textoTarea = $(this).prevAll(".tarea_recibida").text();
  $.post(
    "php/tareas_usuario_borrar.php",
    {
      textoTarea,
    },
    function (respuesta) {
     
      mostrarTareas2();
    }
  );
});

$(document).on("click", ".borrar3", function () {
  let textoTarea = $(this).prevAll(".tarea_recibida").text();
  $.post(
    "php/tareas_usuario_borrar.php",
    {
      textoTarea,
    },
    function (respuesta) {
      $('lista_tareas').innerHTML = ""
      mostrarTareas3(usuarioSelec);
    }
  );
});



$(document).on("click", ".denegar", function () {
  let textoTarea = $(this).prevAll(".tarea_recibida").text();
  $.post(
    "php/tareas_usuario_denegar.php",
    {
      textoTarea,
    },
    function (respuesta) {
      mostrarTareas2();
    }
  );
});

$(document).on("click", ".denegar3", function () {
  let textoTarea = $(this).prevAll(".tarea_recibida").text();
  $.post(
    "php/tareas_usuario_denegar.php",
    {
      textoTarea,
    },
    function (respuesta) {
      $('lista_tareas').innerHTML = ""
           mostrarTareas3(usuarioSelec);
    }
  );
});

$(document).on("click", ".aprobar", function () {
  let textoTarea = $(this).prevAll(".tarea_recibida").text();
  $.post(
    "php/tareas_usuario_aprobado.php",
    {
      textoTarea,
    },
    function (respuesta) {
      mostrarTareas2();
    }
  );
});

$(document).on("click", ".aprobar3", function () {
  let textoTarea = $(this).prevAll(".tarea_recibida").text();
  $.post(
    "php/tareas_usuario_aprobado.php",
    {
      textoTarea,
    },
    function (respuesta) {
      $('lista_tareas').innerHTML = ""
      mostrarTareas3(usuarioSelec);
    }
  );
});

$(document).on("click", ".aprobar4", function () {
  let textoTarea = $(this).prevAll(".tarea_recibida").text();
  $.post(
    "php/tareas_usuario_aprobado.php",
    {
      textoTarea,
    },
    function (respuesta) {
      $('lista_tareas').innerHTML = ""
      mostrarTareas4(categoriaSelec);
    }
  );
});

$(document).on("click", ".denegar4", function () {
  let textoTarea = $(this).prevAll(".tarea_recibida").text();
  $.post(
    "php/tareas_usuario_denegar.php",
    {
      textoTarea,
    },
    function (respuesta) {
      $('lista_tareas').innerHTML = ""
      mostrarTareas4(categoriaSelec);
    }
  );
});

$(document).on("click", ".borrar4", function () {
  let textoTarea = $(this).prevAll(".tarea_recibida").text();
  $.post(
    "php/tareas_usuario_borrar.php",
    {
      textoTarea,
    },
    function (respuesta) {
      alert(textoTarea);
      $('lista_tareas').innerHTML = ""
      mostrarTareas4(categoriaSelec);
    }
  );
});
