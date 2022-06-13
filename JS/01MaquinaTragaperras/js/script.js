var listaImagenes = ["aubergine","banana","carrots","cherries","dollar","lemon","orange","peach","potato","tomato"];


function meterMonedas() {

    var numeroRanura = document.getElementById("ranuraMonedas").value;
    var numeroCreditos = numeroRanura;
    document.getElementById("ranuraMonedas").value = 0;

    if (numeroCreditos > 0) {
        document.getElementById("numeroMonedas").innerHTML = numeroCreditos;
        document.getElementById("botonIntroducir").disabled = true;
        document.getElementById("ranuraMonedas").disabled = true;

        if (numeroCreditos == 1) {
            document.getElementById("listaEventos").innerHTML += "<li>Se ha introducido " + numeroCreditos + " credito </li>";
        }
        else {
            document.getElementById("listaEventos").innerHTML += "<li>Se han introducido " + numeroCreditos + "  creditos </li>";
        }
    } else {

    }

}

function salirPartida() {

    var numeroCreditos = document.getElementById("numeroMonedas").textContent;
    document.getElementById("botonIntroducir").disabled = false;
    document.getElementById("ranuraMonedas").disabled = false;


    if (numeroCreditos > 1) {

        alert("Ha ganado " + numeroCreditos + " creditos");
        document.getElementById("listaEventos").innerHTML += "<li>Ha retirado  " + numeroCreditos + "  creditos </li>";

    }
    else if (numeroCreditos == 1) {

        alert("Ha ganado " + numeroCreditos + " credito");
        document.getElementById("listaEventos").innerHTML += "<li>Ha retirado " + numeroCreditos + "  credito </li>";

    }

    else {

        alert("Lo sentimos no ha ganado nada.");
        document.getElementById("listaEventos").innerHTML += "<li>Lo sentimos. No hay creditos para retirar.</li>";

    }

    document.getElementById("numeroMonedas").innerHTML = 0;
    document.getElementById("ranuraMonedas").value = numeroCreditos;

}

function palancaArriba() {

    document.getElementById("palanca").src = "img/palancaUP.png";
    numeroCreditos = document.getElementById("numeroMonedas").textContent;
    
    if (numeroCreditos > 0) {

        numeroCreditos = numeroCreditos -1;
        document.getElementById("numeroMonedas").innerHTML = numeroCreditos;
        document.getElementById("listaEventos").innerHTML += "<li>Se ha gastado 1 credito. Te quedan: "+numeroCreditos+" creditos</li>";
        jugada();



    } else{
        alert("Por favor introduce monedas");
    }

}

function palancaAbajo() {

    document.getElementById("palanca").src = "img/palancaDOWN.png";

}

function calcularPremio(valorCasilla1,valorCasilla2,valorCasilla3) {
    
    if ((valorCasilla1 == "dollar") && (valorCasilla2 == "dollar") && (valorCasilla3 == "dollar")){

        document.getElementById("listaEventos").innerHTML += "<li> PREMIO !!! 3 DOLARES - 10 Creditos</li>";

        return premio = 10;
        

    }  

    else if ((valorCasilla1 == valorCasilla3) &&  (valorCasilla2 == valorCasilla3)) {

        document.getElementById("listaEventos").innerHTML += "<li> PREMIO !!! 3 IGUALES - 5 Monedas</li>";

        return premio = 5;

    }

    else if (((valorCasilla1 == "dollar") && (valorCasilla2 == "dollar")) 
    || ((valorCasilla1 == "dollar") && (valorCasilla3 == "dollar"))
    || ((valorCasilla2 == "dollar") && (valorCasilla3 == "dollar")))   {

    document.getElementById("listaEventos").innerHTML += "<li> PREMIO !!! 2 DOLARES - 4 Creditos</li>";

    return premio = 4;

}

    else if (((valorCasilla1 == "dollar") && (valorCasilla2 == valorCasilla3) ) 
    || ((valorCasilla2 == "dollar") && (valorCasilla3 == valorCasilla1))
    || ((valorCasilla3 == "dollar") && (valorCasilla1 == valorCasilla2)))   {

    document.getElementById("listaEventos").innerHTML += "<li> PREMIO !!! 1 DOLLAR Y 2 IGUALES - 3 Creditos</li>";
    
    return premio = 3;
    
    }

    else if ((valorCasilla1 == valorCasilla2) 
    || (valorCasilla2 == valorCasilla3)
    || (valorCasilla1 == valorCasilla3))    {

        document.getElementById("listaEventos").innerHTML += "<li> PREMIO !!! 2 IGUALES - 2 Monedas</li>";

        return premio = 2;
        
    }

    else if((valorCasilla1 == "dollar") || (valorCasilla2 == "dollar") || (valorCasilla3 == "dollar")){

        document.getElementById("listaEventos").innerHTML += "<li> PREMIO !!! 1 DOLLAR - 1 Moneda</li>";
        
        return premio = 1;

       

    }  
    
        
    
    
}

function jugada(){

    var imgAleatoria = Math.floor(Math.random() * 10);
    document.getElementById("casilla1").src ="img/"+listaImagenes[imgAleatoria]+".png";
    var casilla1 = listaImagenes[imgAleatoria];
    var imgAleatoria = Math.floor(Math.random() * 10);
    document.getElementById("casilla2").src ="img/"+listaImagenes[imgAleatoria]+".png";
    var casilla2 = listaImagenes[imgAleatoria];
    var imgAleatoria = Math.floor(Math.random() * 10);
    document.getElementById("casilla3").src ="img/"+listaImagenes[imgAleatoria]+".png";
    var casilla3 = listaImagenes[imgAleatoria];

    premio = calcularPremio(casilla1,casilla2,casilla3);
       

    if (premio > 0){

            creditosTotales = document.getElementById("numeroMonedas").textContent;
            creditosTotales = parseInt(creditosTotales); 
            creditosTotales = creditosTotales + premio;
        
        document.getElementById("numeroMonedas").innerHTML = creditosTotales;

    }

    


}

