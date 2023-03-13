package Ejercicio;

public class SmartWatch extends SmartDevice{

    private String materialCorrea;
    private String colorCorrea;

    private int numeroPasos;
    private boolean cargaSolar;

    public SmartWatch(){};
    public SmartWatch(int tamanioPantalla, int amperiosBateria, String sistemaOperativo, int versioModelo) {
        super(tamanioPantalla, amperiosBateria, sistemaOperativo, versioModelo);
    }
    public SmartWatch(int tamanioPantalla, int amperiosBateria, String sistemaOperativo, int versioModelo, String materialCorrea, String colorCorrea, int numeroPasos, boolean cargaSolar) {
        super(tamanioPantalla, amperiosBateria, sistemaOperativo, versioModelo);
        this.materialCorrea = materialCorrea;
        this.colorCorrea = colorCorrea;
        this.numeroPasos = numeroPasos;
        this.cargaSolar = cargaSolar;
    }
    public void cuentaPaso(){

        numeroPasos++;

    }

    public String getMaterialCorrea() {
        return materialCorrea;
    }

    public void setMaterialCorrea(String materialCorrea) {
        this.materialCorrea = materialCorrea;
    }

    public String getColorCorrea() {
        return colorCorrea;
    }

    public void setColorCorrea(String colorCorrea) {
        this.colorCorrea = colorCorrea;
    }

    public int getNumeroPasos() {
        return numeroPasos;
    }

    public void setNumeroPasos(int numeroPasos) {
        this.numeroPasos = numeroPasos;
    }

    public boolean isCargaSolar() {
        return cargaSolar;
    }

    public void setCargaSolar(boolean cargaSolar) {
        this.cargaSolar = cargaSolar;
    }
}
