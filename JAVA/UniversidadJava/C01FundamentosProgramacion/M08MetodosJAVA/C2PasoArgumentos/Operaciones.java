package C1FundamentosProgramacion.M08MetodosJAVA.C2PasoArgumentos;

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

    public int sumarArgumentos(int a, int b) {
        return a + b;
    }

}
