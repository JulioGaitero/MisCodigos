package C1FundamentosProgramacion.M8MetodosJAVA.C1CreacionMetodos;

public class PruebaOperaciones {

    public static void main(String[] args) {
        Operaciones suma1 = new Operaciones();
        suma1.a = 10;
        suma1.b = 20;
        suma1.suma();

        Operaciones suma2 = new Operaciones();
        suma2.a = 10;
        suma2.b = 30;
        int suma = suma2.sumaRetorno();
        System.out.println("La suma es: " + suma);
    }

}
