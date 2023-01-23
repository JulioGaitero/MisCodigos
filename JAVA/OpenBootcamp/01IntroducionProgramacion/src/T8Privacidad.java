import java.awt.*;

public class T8Privacidad {

    public static void main(String[] args){
        Carro Mercadona = new Carro();
        Mercadona.setTipo("5 Ruedas");
        Mercadona.setColor("Verde");
        Mercadona.setMonedas(false);
        System.out.println(Mercadona.getTipo() + " Color: " + Mercadona.getColor() + " Monedas: " + Mercadona.isMonedas());

        Carro Alimerka = new Carro();
        Alimerka.setTipo("4 Ruedas");
        Alimerka.setColor("Amarillo");
        Alimerka.setMonedas(true);
        System.out.println(Alimerka.getTipo() + " Color: " + Alimerka.getColor() + " Monedas " + Alimerka.isMonedas());

    }

}

class  Carro{
    private  String tipo;
    private String color;
    private boolean monedas;

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getTipo() {
        return tipo;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public boolean isMonedas() {
        return monedas;
    }

    public void setMonedas(boolean monedas) {
        this.monedas = monedas;
    }
}