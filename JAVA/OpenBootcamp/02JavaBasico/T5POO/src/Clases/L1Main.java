package Clases;

import Herencia.Camion;
import Herencia.Coche;
import Herencia.Motocicleta;

public class L1Main {
    public static void main(String[] args) {

        L1ClaseVehiculo SeatIbiza = new L1ClaseVehiculo();
        L1ClaseMotor MotorGti = new L1ClaseMotor(120,12,6,"GtiV3");
        L1ClaseVehiculo OpelCorsa = new L1ClaseVehiculo("Opel","Corsa",120,1990,true,140,MotorGti);
        System.out.println(OpelCorsa.getVelocidad());
        OpelCorsa.acelerar(50);
        System.out.println(OpelCorsa.getVelocidad());

        // Herencia

        Motocicleta KawasakiNinja = new Motocicleta();
        KawasakiNinja.fabricante = "KawasakiNinja";

        // Polimorfismo

        L1ClaseVehiculo PruebaAcelerador;

        PruebaAcelerador = new Camion();
        PruebaAcelerador.acelerar(30);

        PruebaAcelerador = new Coche();
        PruebaAcelerador.acelerar(20);

        PruebaAcelerador = new Motocicleta();
        PruebaAcelerador.acelerar(50);
    }
}
