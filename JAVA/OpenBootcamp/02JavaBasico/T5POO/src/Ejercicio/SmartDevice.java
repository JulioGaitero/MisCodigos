package Ejercicio;

public class SmartDevice {

    private int tamanioPantalla;
    private int amperiosBateria;
    private String sistemaOperativo;
    private int versioModelo;

    public void cargarBateria(){

        amperiosBateria ++;
    }

    public SmartDevice(){};
    public SmartDevice(int tamanioPantalla, int amperiosBateria, String sistemaOperativo, int versioModelo) {
        this.tamanioPantalla = tamanioPantalla;
        this.amperiosBateria = amperiosBateria;
        this.sistemaOperativo = sistemaOperativo;
        this.versioModelo = versioModelo;
    }

    public int getTamanioPantalla() {
        return tamanioPantalla;
    }

    public void setTamanioPantalla(int tamanioPantalla) {
        this.tamanioPantalla = tamanioPantalla;
    }

    public int getAmperiosBateria() {
        return amperiosBateria;
    }

    public void setAmperiosBateria(int amperiosBateria) {
        this.amperiosBateria = amperiosBateria;
    }

    public String getSistemaOperativo() {
        return sistemaOperativo;
    }

    public void setSistemaOperativo(String sistemaOperativo) {
        this.sistemaOperativo = sistemaOperativo;
    }

    public int getVersioModelo() {
        return versioModelo;
    }

    public void setVersioModelo(int versioModelo) {
        this.versioModelo = versioModelo;
    }
}
