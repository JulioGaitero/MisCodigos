package Clases;

public class L1ClaseVehiculo {

    // 1. Atributos
    protected String modelo;
    protected String fabricante;
    protected double cc;
    protected int anio;
    protected boolean segundaMano;
    protected int velocidad;
    protected L1ClaseMotor motor;

    // 2. Constructores

    public L1ClaseVehiculo(){

    };

    public L1ClaseVehiculo(String modelo, String fabricante, double cc, int anio, boolean segundaMano, int velocidad, L1ClaseMotor motor) {
        this.modelo = modelo;
        this.fabricante = fabricante;
        this.cc = cc;
        this.anio = anio;
        this.segundaMano = segundaMano;
        this.velocidad = velocidad;
        this.motor = motor;
    }

    //3. Metodos
    public void acelerar(int cantidad){
        this.velocidad += cantidad;
    }

    //4. Getters & Setters


    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getFabricante() {
        return fabricante;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public double getCc() {
        return cc;
    }

    public void setCc(double cc) {
        this.cc = cc;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public boolean isSegundaMano() {
        return segundaMano;
    }

    public void setSegundaMano(boolean segundaMano) {
        this.segundaMano = segundaMano;
    }

    public int getVelocidad() {
        return velocidad;
    }

    public void setVelocidad(int velocidad) {
        this.velocidad = velocidad;
    }
}
