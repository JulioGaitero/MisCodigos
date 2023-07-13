package C1FundamentosProgramacion.M10AlcanceVariables;

public class Aritmetica {
    int lado1;
    int lado2;

    public Aritmetica(){
    }
    public Aritmetica(int lado1, int lado2){
        this.lado1 = lado1;
        this.lado2 = lado2;
    }

    public int suma(){
        return lado1 + lado2;
    }
    public int sumarArgumentos(int a, int b){
        return a + b;
    }
    public int resta(){
        return lado1 - lado2;
    }

}
