package Datos;

import java.util.ArrayList;

public class IniciarDatos {

        public static ArrayList<Cuentas> iniciarCuentas() {

            ArrayList<Cuentas> cuentas = new ArrayList<>();

            cuentas.add(new Cuentas(336912, 1234, 1000, true));
            cuentas.add(new Cuentas(336987, 2234, 200, true));
            cuentas.add(new Cuentas(336913, 1234, 3400, true));
            cuentas.add(new Cuentas(336924, 1234, 4300, false));
            cuentas.add(new Cuentas(336964, 1234, 5000, true));
            cuentas.add(new Cuentas(336928, 1234, 6000, true));
            cuentas.add(new Cuentas(336934, 1234, 7000, true));
            cuentas.add(new Cuentas(336982, 1234, 8000, true));
            cuentas.add(new Cuentas(336971, 1234, 9000, true));
            cuentas.add(new Cuentas(336953, 1234, 1000, false));

            return cuentas;
        }

        public static ArrayList<Usuarios> iniciarUsuarios() {

            ArrayList<Usuarios> usuarios = new ArrayList<>();

            usuarios.add(new Usuarios(1,336912));
            usuarios.add(new Usuarios(2,336987));
            usuarios.add(new Usuarios(3,336913));
            usuarios.add(new Usuarios(4,336924));
            usuarios.add(new Usuarios(5,336964));
            usuarios.add(new Usuarios(6,336928));
            usuarios.add(new Usuarios(7,336934));
            usuarios.add(new Usuarios(8,336982));
            usuarios.add(new Usuarios(9,336971));
            usuarios.add(new Usuarios(10,336953));

            return usuarios;

        }

}
