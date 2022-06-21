package CalcularSueldo;

public class Calculadora {

    public String calculo(int horas, double precioHora) {

        return String.format("%.2f", horas * precioHora);

    }

}
