

function mostrarTurnos() {
  $.ajax({
    url: "php/turno_mostrar.php",
    type: "GET",
    success: function (respuesta) {
      let datosTareas = JSON.parse(respuesta);

      let plantilla = "";
      datosTareas.forEach((datosTareas) => {

        if ( datosTareas.turno == "Turno de Mañanas" ){
       
            plantilla += `<li class="UsuarioTurnos"><div><img class="TurnosImagen" src="img/fotos_perfil/${datosTareas.foto}"></div><div><h4 class="UsuarioRecibido">${datosTareas.usuario}</h4 >
            <span class="TurnoMananas">${datosTareas.turno}</span></div>

            <div class="MenuTurnos">
            <p class="UsuarioRecibidoMenu">${datosTareas.usuario}</p> 
            <span class="mananas"> <img src="img/iconos/mananas.svg" alt="Turno de Mañanas"></span>
            <span class="tardes"><img src="img/iconos/tardes.svg" alt="Turno de Tardes"></span>
            <span class="noches"><img src="img/iconos/noches.svg" alt="Turno de Noches"></span>
            <span class="libre"><img src="img/iconos/libre.svg" alt="Semana Libre"></span>
            </div>
            
            </li>`;}
            
            else if ( datosTareas.turno == "Turno de Tardes"  ){
              plantilla += `<li class="UsuarioTurnos"><div><img class="TurnosImagen" src="img/fotos_perfil/${datosTareas.foto}"></div><div><h4 class="UsuarioRecibido">${datosTareas.usuario}</h4 >
              <span class="TurnoTardes">${datosTareas.turno}</span></div>
  
              <div class="MenuTurnos">
              <p class="UsuarioRecibidoMenu">${datosTareas.usuario}</p> 
              <span class="mananas"> <img src="img/iconos/mananas.svg" alt="Turno de Mañanas"></span>
              <span class="tardes"><img src="img/iconos/tardes.svg" alt="Turno de Tardes"></span>
              <span class="noches"><img src="img/iconos/noches.svg" alt="Turno de Noches"></span>
              <span class="libre"><img src="img/iconos/libre.svg" alt="Semana Libre"></span>
              </div>
              
              </li>`;
            }

            else if ( datosTareas.turno == "Turno de Noches"  ){
              plantilla += `<li class="UsuarioTurnos"><div><img class="TurnosImagen" src="img/fotos_perfil/${datosTareas.foto}"></div><div><h4 class="UsuarioRecibido">${datosTareas.usuario}</h4 >
              <span class="TurnoNoches">${datosTareas.turno}</span></div>
  
              <div class="MenuTurnos">
              <p class="UsuarioRecibidoMenu">${datosTareas.usuario}</p> 
              <span class="mananas"> <img src="img/iconos/mananas.svg" alt="Turno de Mañanas"></span>
              <span class="tardes"><img src="img/iconos/tardes.svg" alt="Turno de Tardes"></span>
              <span class="noches"><img src="img/iconos/noches.svg" alt="Turno de Noches"></span>
              <span class="libre"><img src="img/iconos/libre.svg" alt="Semana Libre"></span>
              </div>
              
              </li>`;
            }else{

              plantilla += `<li class="UsuarioTurnos"><div><img class="TurnosImagen" src="img/fotos_perfil/${datosTareas.foto}"></div><div><h4 class="UsuarioRecibido">${datosTareas.usuario}</h4 >
              <span class="TurnoLibre">${datosTareas.turno}</span></div>
  
              <div class="MenuTurnos">
              <p class="UsuarioRecibidoMenu">${datosTareas.usuario}</p> 
              <span class="mananas"> <img src="img/iconos/mananas.svg" alt="Turno de Mañanas"></span>
              <span class="tardes"><img src="img/iconos/tardes.svg" alt="Turno de Tardes"></span>
              <span class="noches"><img src="img/iconos/noches.svg" alt="Turno de Noches"></span>
              <span class="libre"><img src="img/iconos/libre.svg" alt="Semana Libre"></span>
              </div>
              
              </li>`;

            }
          });

      $("#lista_turnos").html(plantilla);
    },
  });
 
}

$(document).on("click", ".mananas", function () { 
  let usuarioTarea = $(this).prev(".UsuarioRecibidoMenu").text();
  let usuarioTurno ="Turno de Mañanas";
  $.post(
    "php/turno_cambiar.php",
    {
      usuarioTarea,usuarioTurno,
    },
    function () {
      mostrarTurnos();
      mostrarNoches();
      mostrarTardes();
      mostrarMananas();
      mostrarLibres();
     
    }
  );
});

$(document).on("click", ".tardes", function () { 
  let usuarioTarea = $(this).prevAll(".UsuarioRecibidoMenu").text();
  let usuarioTurno ="Turno de Tardes";
  $.post(
    "php/turno_cambiar.php",
    {
      usuarioTarea,usuarioTurno,
    },
    function () {
      mostrarTurnos();
      mostrarNoches();
      mostrarTardes();
      mostrarMananas();
      mostrarLibres();

    }
  );
});

$(document).on("click", ".libre", function () { 
  let usuarioTarea = $(this).prevAll(".UsuarioRecibidoMenu").text();
  let usuarioTurno ="Turno Libre";
  $.post(
    "php/turno_cambiar.php",
    {
      usuarioTarea,usuarioTurno,
    },
    function () {
      mostrarTurnos();
      mostrarNoches();
      mostrarTardes();
      mostrarMananas();
      mostrarLibres();

    }
  );
});

$(document).on("click", ".noches", function () { 
  let usuarioTarea = $(this).prevAll(".UsuarioRecibidoMenu").text();
  let usuarioTurno ="Turno de Noches";
  $.post(
    "php/turno_cambiar.php",
    {
      usuarioTarea,usuarioTurno,
    },
    function () {
      mostrarTurnos();
      mostrarNoches();
      mostrarTardes();
      mostrarMananas();
      mostrarLibres();
      

    }
  );
});

mostrarTurnos();

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
