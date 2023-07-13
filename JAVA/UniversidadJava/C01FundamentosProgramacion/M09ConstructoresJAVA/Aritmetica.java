package C1FundamentosProgramacion.M09ConstructoresJAVA;

public class Aritmetica {

    int lado1;
    int lado2;
    int lado3;

    public Aritmetica(){

    }
    public Aritmetica(int lado1, int lado2) {
        this.lado1 = lado1;
        this.lado2 = lado2;
    }

    public Aritmetica(int lado1, int lado2, int lado3) {
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
    }

    public int suma() {
        return lado1 + lado2;
    }

}
