package C1FundamentosProgramacion.M8MetodosJAVA.C3This;

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

    public int sumarArgumentosThis(int arg1, int arg2) {
        this.a = arg1;
        this.b = arg2;
        return a + b;
    }

}
