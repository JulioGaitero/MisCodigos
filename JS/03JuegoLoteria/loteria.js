function funcionJugar() {
  var sorteo = new Array(6); // Contiene los numeros del sorteo.
  var numerosJugados = new Array(6); // Contiene los numeros que introduce el usuario.
  var aciertos = 0; // Numero de coincidencias entre en numero juegado y el numero sorteado.
  var comprobado = true; // True: los numeros validos.
  var lis = document.querySelectorAll("#premio li"); // Contiene el importe premio

  /* Borro el premio mas iniciar la partida. Para que no se vayan acumulando a medida que 
  se va jugando. */

  for (var i = 0; (li = lis[i]); i++) {
    li.parentNode.removeChild(li);
  }

  /* Borro los resultados mas iniciar la partida. Para que no se vayan acumulando a medida que 
  se va jugando. */

  var lis = document.querySelectorAll("#resultados li"); // Contiene los resultados.

  for (var i = 0; (li = lis[i]); i++) {
    li.parentNode.removeChild(li);
  }

  // Recojo los valores de la pagina, de los numeros introducidos por el usuario.

  for (i = 0; i < numerosJugados.length; i++) {
    numerosJugados[i] = document.getElementById("numero" + (i + 1)).value;
  }

  //Ordeno el array, de los numeros introducidos por el usuario.

  numerosJugados.sort();

  /* Compruebo si los numeros introducidos son validos. En caso de que no cumpla alguna de las
     tres reglas cambiaremos la variable comprobado. Que impedira que se sigua ejecutando el programa */

  for (i = 0; i < numerosJugados.length; i++) {
    if (numerosJugados[i] == "") {
      alert("Tienes numeros sin rellenar, por favor comprueba la jugada.");
      comprobado = false;
      break;
    }

    if (numerosJugados[i] == numerosJugados[i - 1]) {
      alert(
        "Has introducido numeros repetidos, por favor comprueba la jugada."
      );
      comprobado = false;
      break;
    }
    if (numerosJugados[i] < 1 || numerosJugados[i] > 49) {
      alert("Los numeros introducidos deben tener un valor entre 1 y 49");
      comprobado = false;
      break;
    }
  }

  
  if (comprobado) {
  /*Relleno el array de los numeros generados por el ordenador, con numeros aleatorios.
  Y compruebo que no se repita ningun numero */  
    for (i = 0; i < sorteo.length; i++) {
      var numero = Math.floor(Math.random() * 49) + 1;
      if (sorteo.includes(numero)) {
        i--;
        continue;
      } else {
        sorteo[i] = numero;
      }
    }
  //Ordeno el array, de los numeros generados y los imprimo en pantalla. 
    sorteo.sort((a, b) => a - b);
    for (i = 0; i < sorteo.length; i++) {
      document.getElementById("resultados").innerHTML +=
        '<li class="resultado"> ' + sorteo[i] + " </li>";
    }


  //Cuento el numero de aciertos, comparando los dos arrays.    
    for (i = 0; i < numerosJugados.length; i++) {
      var numeroJugado = parseInt(numerosJugados[i]);
      if (sorteo.includes(numeroJugado)) {
        aciertos++;
      }
    }
  //Imprimo los aciertos por pantalla. 
    document.getElementById("aciertos").innerHTML = aciertos;


  //Dependiendo el numero de aciertos imprimo una cosa u otra.   
    switch (aciertos) {
      case 3:
        document.getElementById("premio").innerHTML +=
          '<li class="premio"> 10 € </li>';
        break;

      case 4:
        document.getElementById("premio").innerHTML +=
          '<li class="premio"> 100 € </li>';
        break;

      case 5:
        document.getElementById("premio").innerHTML +=
          '<li class="premio"> 1000 € </li>';
        break;

      case 6:
        document.getElementById("premio").innerHTML +=
          '<li class="premio"> 1.000.000 € </li>';
        break;

      default:
        document.getElementById("premio").innerHTML +=
          '<li class="premio"> Lo sentimos no te ha tocado nada</li>';
        break;
    }
  
  /* Muestro la "capa", que tenia oculta al iniciar la pantalla. Que 
  contiene los resultados, numero de aciertos y premio */
    
    document.getElementById("oculto").style.display = "block";
  }
}
