import Datos.Cuentas;
import Datos.IniciarDatos;

import java.util.ArrayList;

public class Main {


    public static void main(String[] args) {

        Utils.Logos.imprimirLogo();
        ArrayList<Cuentas> cuentas = IniciarDatos.iniciarCuentas();
        Utils.Auth.auth(cuentas);
        
    }

}