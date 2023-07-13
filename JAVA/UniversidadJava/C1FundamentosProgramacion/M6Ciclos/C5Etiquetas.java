package C1FundamentosProgramacion.M6Ciclos;

public class C5Etiquetas {

    public static void main(String[] args) {
        inicio:

        for(int i = 0; i < 10; i++) {
            System.out.println(i);
            if (i == 5) {
                continue inicio;
            }
        }
        inicio2:

        for(int i = 0; i < 10; i++) {
            System.out.println(i);
            if (i == 5) {
                break inicio2;
            }
        }
    }

}
