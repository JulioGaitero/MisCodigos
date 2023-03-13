package Ejercicio;

public class SmartPhone extends SmartDevice {

    private boolean esLibre;

    private boolean tieneFunda;

    private String colorFunda;
    public SmartPhone(){};
    public SmartPhone(int tamanioPantalla, int amperiosBateria, String sistemaOperativo, int versioModelo) {
        super(tamanioPantalla, amperiosBateria, sistemaOperativo, versioModelo);
    }

    public SmartPhone(int tamanioPantalla, int amperiosBateria, String sistemaOperativo, int versioModelo, boolean esLibre, boolean tieneFunda, String colorFunda) {
        super(tamanioPantalla, amperiosBateria, sistemaOperativo, versioModelo);
        this.esLibre = esLibre;
        this.tieneFunda = tieneFunda;
        this.colorFunda = colorFunda;
    }

    public SmartPhone(int tamanioPantalla, int amperiosBateria, String sistemaOperativo, int versioModelo, boolean esLibre, boolean tieneFunda) {
        super(tamanioPantalla, amperiosBateria, sistemaOperativo, versioModelo);
        this.esLibre = esLibre;
        this.tieneFunda = tieneFunda;

    }

    public  void LiberarMovil(boolean b){
        esLibre = true;
    }

    public boolean isEsLibre() {
        return esLibre;
    }

    public void setEsLibre(boolean esLibre) {
        this.esLibre = esLibre;
    }

    public boolean isTieneFunda() {
        return tieneFunda;
    }

    public void setTieneFunda(boolean tieneFunda) {
        this.tieneFunda = tieneFunda;
    }

    public String getColorFunda() {
        return colorFunda;
    }

    public void setColorFunda(String colorFunda) {
        this.colorFunda = colorFunda;
    }
}
