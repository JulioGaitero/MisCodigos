package C1FundamentosProgramacion.M10AlcanceVariables.LaboratorioCaja;

public class Prueba {

    public static void main(String[] args) {

        Caja caja = new Caja();
        caja.alto = 3;
        caja.ancho = 6;
        caja.profundidad = 9;
        System.out.println(caja.calculaVolumen());

        Caja caja1 = new Caja(3, 6, 9);
        System.out.println(caja1.calculaVolumen());

    }

}
