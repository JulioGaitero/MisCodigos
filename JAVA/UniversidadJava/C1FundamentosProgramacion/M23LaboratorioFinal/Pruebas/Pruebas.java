package C1FundamentosProgramacion.M23LaboratorioFinal.Pruebas;

import C1FundamentosProgramacion.M23LaboratorioFinal.mundopc.*;

public class Pruebas {

    public static void main(String[] args) {
        Monitor monitorHp = new Monitor("HP", 15.6);
        Monitor monitorSamsung = new Monitor("Samsung", 15.6);

        Teclado tecladoHp = new Teclado("USB", "HP");
        Teclado tecladoSamsung = new Teclado("USB", "Samsung");

        Raton ratonHp = new Raton("USB", "HP");
        Raton ratonSamsung = new Raton("USB", "Samsung");

        Computadora computadoraHp = new Computadora("HP", monitorHp, tecladoHp, ratonHp);
        Computadora computadoraSamsung = new Computadora("Samsung", monitorSamsung, tecladoSamsung, ratonSamsung);

        Orden orden = new Orden();
        orden.agregarComputadora(computadoraHp);
        orden.agregarComputadora(computadoraSamsung);

        orden.mostrarOrden();

        Orden orden2 = new Orden();
        orden2.agregarComputadora(computadoraSamsung);
        orden2.agregarComputadora(computadoraHp);
        orden2.agregarComputadora(computadoraSamsung);
        orden2.mostrarOrden();
    }

}
