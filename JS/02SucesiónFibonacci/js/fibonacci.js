function calculaFibo() {
  var lis = document.querySelectorAll("#listaNumeros li");

  for (var i = 0; (li = lis[i]); i++) {
    li.parentNode.removeChild(li);
  }
  var valorIntroducido = document.getElementById("numeros").value;
  if (valorIntroducido > 100 || valorIntroducido < 1) {
    document.getElementById("listaNumeros").innerHTML +=
      '<li class="resultado">El número introducido debe de ser entre 1 y 100</li>';
  } else {
    var num1 = 0;
    var num2 = 1;
    var sum;
    var i = 0;
    for (i = 0; i < valorIntroducido; i++) {
      sum = num1 + num2;
      num1 = num2;
      num2 = sum;
      document.getElementById("listaNumeros").innerHTML +=
        '<li class="resultado"> ' + sum + " </li>";
    }
  }
}
