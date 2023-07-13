package C1FundamentosProgramacion.M8MetodosJAVA.C1CreacionMetodos;

public class Operaciones {

    int a;
    int b;

    public void suma() {
        int resultado = a + b;
        System.out.println("La suma es: " + resultado);
    }
    public int sumaRetorno() {
        return a + b;
    }
}
