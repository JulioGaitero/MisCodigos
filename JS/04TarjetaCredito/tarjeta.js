const idNumero = document.querySelector("#idNumero");
const fecha = document.querySelector("#fecha");
const cvv = document.querySelector("#cvv");

const mascaraNumero = "####-####-####-####";
const mascaraFecha = "##/##";
const mascaraCvv = "###";
const mascaraNombre = /^[a-zA-ZÀ-ÿ\s]{1,40}$/;

let digito = "";
let numeroTarjeta = [];
let numeroFecha = [];
let numeroCvv = [];

idNumero.addEventListener("keydown", (e) => {
  if (e.key === "Tab") {
    return;
  }

  e.preventDefault();
  remplazo(mascaraNumero, e.key, numeroTarjeta);
  idNumero.value = numeroTarjeta.join("");
});

fecha.addEventListener("keydown", (e) => {
  if (e.key === "Tab") {
    return;
  }

  e.preventDefault();
  remplazo(mascaraFecha, e.key, numeroFecha);
  fecha.value = numeroFecha.join("");
});

cvv.addEventListener("keydown", (e) => {
  if (e.key === "Tab") {
    return;
  }

  e.preventDefault();
  remplazo(mascaraCvv, e.key, numeroCvv);
  cvv.value = numeroCvv.join("");
});

function remplazo(mascara, tecla, nombreArray) {
  let numerosValidados = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];

  if (tecla === "Backspace" && nombreArray.length > 0) {
    nombreArray.pop();
    return;
  }

  if (
    numerosValidados.includes(tecla) &&
    nombreArray.length + 1 <= mascara.length
  ) {
    if (
      mascara[nombreArray.length] === "-" ||
      mascara[nombreArray.length] === "/"
    ) {
      nombreArray.push(mascara[nombreArray.length], tecla);
    } else {
      nombreArray.push(tecla);
    }
  }
}
