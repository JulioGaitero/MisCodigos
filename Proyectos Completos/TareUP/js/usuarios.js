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

$("#boton_registrar").click(function () {
  var parametros = new FormData($("#crear_usuario")[0]);
  $.ajax({
    data: parametros,
    url: "php/registrar_usuario.php",
    type: "POST",
    contentType: false,
    processData: false,
    beforeSend: function () {},
    success: function (respuesta) {
      alert(respuesta);
    },
  });
});

$(document).on("click", "#boton_editar", function () {
  var parametros = new FormData($("#crear_usuario")[0]);
  $.ajax({
    data: parametros,
    url: "php/actualizar_usuario.php",
    type: "POST",
    contentType: false,
    processData: false,
    beforeSend: function () {},
    success: function (respuesta) {
      alert(respuesta);
      buscarUsuario();
    },
  });
});

$(document).on("click", "#boton_borrar", function () {
    let usuario = $('#nombre_usuario').val();
    $.post(
      "php/borrar_usuario.php",
      {
        usuario,
      },
      function (respuesta) {
        alert(respuesta);
        buscarUsuario();
      }
    );
  });


$("#buscar_usuario").keyup(function (e) {
  buscarUsuario();
});

$(document).on("click", ".foto_perfil", function () {
  let usuario = $(this).next("h4").text();
  $("#Edicion_Usuario").text("Editar usuario");
  $("#boton_borrar").css("display", "block");
  $("#boton_editar").css("display", "block");
  $("#boton_registrar").css("display", "none");

  $.post("php/editar_usuario.php", { usuario }, function (respuesta) {
    let datosUsuario = JSON.parse(respuesta);

    datosUsuario.forEach((datosUsuario) => {
      $("#nombre_usuario").val(datosUsuario.usuario);
      $("#contrasena").val(datosUsuario.clave);
      $("#contrasena2").val(datosUsuario.clave);
      if (datosUsuario.Admin == 0) {
        $("#es_admin").prop("checked", false);
      } else {
        $("#es_admin").prop("checked", true);
      }
    });
  });
});
