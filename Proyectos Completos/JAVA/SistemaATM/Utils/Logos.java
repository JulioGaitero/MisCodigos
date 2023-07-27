package Utils;

import Datos.Cuentas;
import com.sun.tools.javac.Main;

import java.util.ArrayList;
import java.util.Scanner;

import static Utils.Auth.auth;
import static Utils.Auth.cuentaActiva;

public class Logos {


    public static void imprimirLogo(){
        System.out.println();
        System.out.println("       d8888 88888888888 888b     d888");
        System.out.println("      d88888     888     8888b   d8888");
        System.out.println("     d88P888     888     88888b.d88888");
        System.out.println("    d88P 888     888     888Y88888P888");
        System.out.println("   d88P  888     888     888 Y888P 888");
        System.out.println("  d88P   888     888     888  Y8P  888");
        System.out.println(" d8888888888     888     888       888");
        System.out.println("d88P     888     888     888       888");
        System.out.println();
        System.out.println("                  Julio Gaitero - 2023");
    }

    public static void mostrarMenu(ArrayList<Cuentas> cuentas) {

        boolean salir = false;

        while (salir == false) {

            System.out.println("########################################\n");
            System.out.println("1. Ver saldo");
            System.out.println("2. Retirar dinero");
            System.out.println("3. Depositar dinero");
            System.out.println("4. Transferir dinero");
            System.out.println("5. Salir\n");
            System.out.println("########################################\n");

            Scanner entradaTeclado = new Scanner(System.in);

            switch (entradaTeclado.nextInt()) {
                case 1:
                    Movimientos.verSaldo();
                    Interacion.pulsaContinuar();
                    break;
                case 2:
                    Movimientos.retirarDinero();
                    break;
                case 3:
                    Movimientos.depositarDinero();
                    break;
                case 4:
                    Movimientos.transferirDinero(cuentas);
                    break;
                case 5:
                    salir = true;
                    imprimirLogo();
                    auth(cuentas);
                    break;
                default:
                    System.out.println("Opcion no valida");
            }

        }

    }

}
