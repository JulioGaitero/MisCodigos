package Herencia;

import Clases.L1ClaseMotor;
import Clases.L1ClaseVehiculo;

public class Motocicleta extends L1ClaseVehiculo {
    boolean baul;

    public Motocicleta(){}
    public Motocicleta(String modelo, String fabricante, double cc, int anio, boolean segundaMano, int velocidad, L1ClaseMotor motor, boolean baul) {
        super(modelo, fabricante, cc, anio, segundaMano, velocidad, motor);
        this.baul = baul;
    }
}
