package Clases;
public class L1Main {
    public static void main(String[] args) {
        L1ClaseVehiculo SeatIbiza = new L1ClaseVehiculo();
        L1ClaseMotor MotorGti = new L1ClaseMotor(120,12,6,"GtiV3");
        L1ClaseVehiculo OpelCorsa = new L1ClaseVehiculo("Opel","Corsa",120,1990,true,140,MotorGti);
        System.out.println(OpelCorsa.getVelocidad());
        OpelCorsa.acelerar(50);
        System.out.println(OpelCorsa.getVelocidad());
    }
}
