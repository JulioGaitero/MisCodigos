package Utils;

import Datos.Cuentas;

import java.util.ArrayList;
import java.util.Scanner;
import static Utils.Auth.cuentaActiva;
import static Utils.Interacion.pulsaContinuar;

public class Movimientos {

    public static void verSaldo() {
        System.out.println("Saldo: " + cuentaActiva.getSaldo() + " €");
    }

    public static void retirarDinero() {
        System.out.println("Introduzca el monto a retirar:");
        Scanner entradaTeclado = new Scanner(System.in);
        double monto = entradaTeclado.nextDouble();
        if (cuentaActiva.getSaldo() > monto) {
            cuentaActiva.setSaldo(cuentaActiva.getSaldo() - monto);
            System.out.println("Saldo: " + cuentaActiva.getSaldo() + " €");
        } else {
            System.out.println("Saldo insuficiente");
            System.out.println("Saldo: " + cuentaActiva.getSaldo() + " €");
        }

        pulsaContinuar();
    }

    public static void depositarDinero() {

        System.out.println("Introduzca el monto a depositar:");
        Scanner entradaTeclado = new Scanner(System.in);
        double monto = entradaTeclado.nextDouble();
        cuentaActiva.setSaldo(cuentaActiva.getSaldo() + monto);
        System.out.println("Saldo: " + cuentaActiva.getSaldo() + " €");

        pulsaContinuar();
    }

    public static void transferirDinero(ArrayList<Cuentas> cuentas) {

        System.out.println("Introduzca la cuenta a transferir:");
        Scanner entradaTeclado = new Scanner(System.in);
        int numeroCuenta = entradaTeclado.nextInt();
        Cuentas cuentaDestino = null;
        double dineroTransferido = 0;
        boolean existeCuenta = false;

        while (!existeCuenta) {

            for (Cuentas cuenta : cuentas) {
                if (cuenta.getNumeroCuenta() == numeroCuenta) {
                    cuentaDestino = cuenta;
                    existeCuenta = true;
                }
            }

        }

        if (existeCuenta) {
            System.out.println();
            System.out.println("Introduzca el monto a transferir:");
            dineroTransferido = entradaTeclado.nextDouble();
            if (dineroTransferido < cuentaDestino.getSaldo()) {
                cuentaActiva.setSaldo(cuentaActiva.getSaldo() - dineroTransferido);
                cuentaDestino.setSaldo(cuentaDestino.getSaldo() + dineroTransferido);
                System.out.println(dineroTransferido + " € transferido a la cuenta: " + cuentaDestino.getNumeroCuenta());
                System.out.println("Saldo: " + cuentaActiva.getSaldo() + " €");

            } else {
                System.out.println("Saldo insuficiente");
                System.out.println("Saldo: " + cuentaActiva.getSaldo() + " €");
            }
        } else {
            System.out.println("Cuenta no encontrada");
        }

        pulsaContinuar();

    }
}
