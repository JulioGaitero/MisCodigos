package Utils;

import Datos.Cuentas;
import Datos.IniciarDatos;
import Datos.Usuarios;

import java.util.ArrayList;
import java.util.Scanner;

public class Auth {

    public static Cuentas cuentaActiva;
    public static Usuarios usuarioActivo;


    public static void auth(ArrayList<Cuentas> cuentas) {

        int numeroCuenta;
        int numeroPin;
        boolean cuentaEncontrada = false;


        while (!cuentaEncontrada) {

            boolean estadoCuenta = false;

            while (!estadoCuenta) {

                System.out.println("######################################\n");
                System.out.println("Introduzca el numero de cuenta:");
                Scanner entradaTeclado = new Scanner(System.in);
                numeroCuenta = entradaTeclado.nextInt();
                System.out.println("Introduzca el pin:");
                entradaTeclado = new Scanner(System.in);
                numeroPin = entradaTeclado.nextInt();
                Datos.IniciarDatos.iniciarCuentas();

                for (Cuentas cuenta : cuentas) {
                    if (cuenta.getNumeroCuenta() == numeroCuenta && cuenta.getPin() == numeroPin) {
                        cuentaEncontrada = true;
                        cuentaActiva = cuenta;
                        break;
                    }
                }

                if (cuentaEncontrada && cuentaActiva.isEstado()) {
                    System.out.println("########################################\n");
                    System.out.println("Hola de nuevo. Bienvenido al sistema ATM\n");
                    IniciarDatos.iniciarUsuarios();
                    ArrayList<Usuarios> usuarios = Datos.IniciarDatos.iniciarUsuarios();
                    for (Usuarios usuario : usuarios) {
                        if (usuario.getNumCuenta() == cuentaActiva.getNumeroCuenta()) {
                            usuarioActivo = usuario;
                            Logos.mostrarMenu(cuentas);
                            break;
                        }
                    }
                } else if (cuentaEncontrada && !cuentaActiva.isEstado()) {
                    System.out.println("Lo sentimos su cuenta ha sido desactivado.\n");
                } else {
                    System.out.println("Usuario y contraseña incorrectos.\n");
                }

            }
        }

    }

}
