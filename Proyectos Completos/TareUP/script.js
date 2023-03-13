$(document).ready(function (e) {
  function mostrarMananas() {
    $.ajax({
      url: "php/barra_lateral_mananas.php",
      type: "GET",
      success: function (respuesta) {
        let datosTareas = JSON.parse(respuesta);
        let plantilla = "";
        datosTareas.forEach((datosTareas) => {
          if (datosTareas.turno == "Turno de Mañanas") {
            plantilla += `<div class="turno_usuario_lateral">
              <img class="TurnosImagen" src="img/fotos_perfil/${datosTareas.foto}">
                           </div>
              `;
          }
        });

        $("#mostrar_manana").html(plantilla);
      },
    });
  }

  mostrarMananas();

  function mostrarTardes() {
    $.ajax({
      url: "php/barra_lateral_mananas.php",
      type: "GET",
      success: function (respuesta) {
        let datosTareas = JSON.parse(respuesta);
        let plantilla = "";
        datosTareas.forEach((datosTareas) => {
          if (datosTareas.turno == "Turno de Tardes") {
            plantilla += `<div class="turno_usuario_lateral">
              <img class="TurnosImagen" src="img/fotos_perfil/${datosTareas.foto}">
             
              </div>
              `;
          }
        });

        $("#mostrar_tardes").html(plantilla);
      },
    });
  }

  mostrarTardes();

  function mostrarNoches() {
    $.ajax({
      url: "php/barra_lateral_mananas.php",
      type: "GET",
      success: function (respuesta) {
        let datosTareas = JSON.parse(respuesta);
        let plantilla = "";
        datosTareas.forEach((datosTareas) => {
          if (datosTareas.turno == "Turno de Noches") {
            plantilla += `<div class="turno_usuario_lateral">
              <img class="TurnosImagen" src="img/fotos_perfil/${datosTareas.foto}">
                           </div>
              `;
          }
        });

        $("#mostrar_noches").html(plantilla);
      },
    });
  }

  mostrarNoches();

  function mostrarLibres() {
    $.ajax({
      url: "php/barra_lateral_mananas.php",
      type: "GET",
      success: function (respuesta) {
        let datosTareas = JSON.parse(respuesta);
        let plantilla = "";
        datosTareas.forEach((datosTareas) => {
          if (datosTareas.turno == "Turno Libre") {
            plantilla += `<div class="turno_usuario_lateral">
              <img class="TurnosImagen" src="img/fotos_perfil/${datosTareas.foto}">
                          </div>
              `;
          }
        });

        $("#mostrar_libres").html(plantilla);
      },
    });
  }

  mostrarLibres();

  function mostrarTareas() {
    $.ajax({
      url: "php/mostrar_tareas.php",
      type: "GET",
      success: function (respuesta) {
        let datosTareas = JSON.parse(respuesta);

        let plantilla = "";
        datosTareas.forEach((datosTareas) => {
          if (datosTareas.acabaTarea == 1) {
            if (datosTareas.estadoTarea == "Pendiente") {
              plantilla += `<li> <input class="marcar" type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a></img></li>`;
            } else if (datosTareas.estadoTarea == "Aprobado") {
              plantilla += `<li> <input class="marcar" type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="aprobado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/aprobado.svg"></img></li>`;
            } else if (datosTareas.estadoTarea == "Denegado") {
              plantilla += `<li> <input class="marcar" type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="denegado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/denegado.svg"></img></li>`;
            }
          } else if (datosTareas.acabaTarea == 0) {
            if (datosTareas.estadoTarea == "Pendiente") {
              plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a></img></li>`;
            } else if (datosTareas.estadoTarea == "Aprobado") {
              plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="aprobado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/aprobado.svg"></img></li>`;
            } else if (datosTareas.estadoTarea == "Denegado") {
              plantilla += `<li> <input class="marcar" type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="denegado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/denegado.svg"></img></li>`;
            }
          }
        });

        $("#lista_tareas").html(plantilla);
      },
    });
  }

  mostrarTareas();

  $("#categoria_tareas li a").click(function (e) {
    let categoriaEnviada = $("#categoria_tareas li a:hover").text();

    $.post("php/categorias.php", { categoriaEnviada }, function (respuesta) {
      let datosTareas = JSON.parse(respuesta);

      let plantilla = "";
      datosTareas.forEach((datosTareas) => {
        if (datosTareas.acabaTarea == 1) {
          if (datosTareas.estadoTarea == "Pendiente") {
            plantilla += `<li> <input type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a></img></li>`;
          } else if (datosTareas.estadoTarea == "Aprobado") {
            plantilla += `<li> <input type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="aprobado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/aprobado.svg"></img></li>`;
          } else if (datosTareas.estadoTarea == "Denegado") {
            plantilla += `<li> <input type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="denegado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/denegado.svg"></img></li>`;
          }
        } else if (datosTareas.acabaTarea == 0) {
          if (datosTareas.estadoTarea == "Pendiente") {
            plantilla += `<li> <input type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a></li>`;
          } else if (datosTareas.estadoTarea == "Aprobado") {
            plantilla += `<li> <input type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="aprobado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/aprobado.svg"></img></li>`;
          } else if (datosTareas.estadoTarea == "Denegado") {
            plantilla += `<li> <input type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="denegado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/denegado.svg"></img></li></li>`;
          }
        }
      });

      $("#lista_tareas").html(plantilla);
    });
  });

  $("#enviar_tareas").submit(function (e) {
    if ($("#input_tareas").val() < 1) {
      alert("No has introducido ninguna tarea");
    } else {
      let almacenarDatos = {
        textoTarea: $("#input_tareas").val(),
      };

      $.post("php/anadir_tarea.php", almacenarDatos, function (respuesta) {
        $("#enviar_tareas").trigger("reset");
        mostrarTareas();
      });
      e.preventDefault();
    }
  });

  $("#cerrar_sesion").click(function () {
    $(location).attr("href", "php/cerrar_sesion.php");
  });

  $("#input_buscar").keyup(function (e) {
    if ($("#input_buscar").val()) {
      let busqueda = $("#input_buscar").val();
      $.ajax({
        url: "php/buscar.php",
        type: "POST",
        data: { busqueda: busqueda },
        success: function (respuesta) {
          let datosTareas = JSON.parse(respuesta);

          let plantilla = "";
          datosTareas.forEach((datosTareas) => {
            if (datosTareas.acabaTarea == 1) {
              if (datosTareas.estadoTarea == "Pendiente") {
                plantilla += `<li> <input type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a></li>`;
              } else if (datosTareas.estadoTarea == "Aprobado") {
                plantilla += `<li> <input type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><<span class="aprobado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/aprobado.svg"></img></li>`;
              } else if (datosTareas.estadoTarea == "Denegado") {
                plantilla += `<li> <input type="checkbox" checked><p class="tarea_recibida">${datosTareas.textoTarea}</p><<span class="denegado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/denegado.svg"></img></li>`;
              }
            } else if (datosTareas.acabaTarea == 0) {
              if (datosTareas.estadoTarea == "Pendiente") {
                plantilla += `<li> <input type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><span class="pendiente">${datosTareas.estadoTarea}</span><a class="borrar" href="#"><img class="icono_listado" src="img/iconos/borrar.svg"></a></li>`;
              } else if (datosTareas.estadoTarea == "Aprobado") {
                plantilla += `<li> <input type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><<span class="aprobado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/aprobado.svg"></img></li>`;
              } else if (datosTareas.estadoTarea == "Denegado") {
                plantilla += `<li> <input type="checkbox"><p class="tarea_recibida">${datosTareas.textoTarea}</p><<span class="denegado">${datosTareas.estadoTarea}</span><img class="icono_listado" src="img/iconos/denegado.svg"></img></li>`;
              }
            }
          });

          $("#tareas_encontradas").html(plantilla);
        },
      });
    }
  });

  $("#boton_usuarios").click(function () {
    $.post("php/inicio_usarios.php", function (htmlexterno) {
      $("#tareas").html(htmlexterno);
    });
  });

  $("#boton_tareas").click(function () {
    $.post("php/inicio_tareas.php", function (htmlexterno) {
      $("#tareas").html(htmlexterno);
    });
  });

  $("#boton_turnos").click(function () {
    $.post("php/turno_index.php", function (htmlexterno) {
      $("#tareas").html(htmlexterno);
    });
  });

  $(function () {
    $(document).on("click", ".borrar", function () {
      let textoTarea = $(this).prevAll(".tarea_recibida").text();
      $.post(
        "php/borrar_tarea.php",
        {
          textoTarea,
        },
        function (respuesta) {
          mostrarTareas();
          $("#tareas_encontradas").empty();
          $("#input_buscar").val("");
        }
      );
    });

    $(document).on("click", ".marcar", function () {
      if ($(this).prop("checked")) {
        let textoTarea = $(this).next("p").text();

        $.post(
          "php/tarea_check.php",
          {
            textoTarea,
          },
          function (respuesta) {}
        );
      } else {
        let textoTarea = $(this).next("p").text();
        $.post(
          "php/tarea_uncheck.php",
          {
            textoTarea,
          },
          function (respuesta) {}
        );
      }
    });
  });
});
