package C1FundamentosProgramacion.M6Ciclos;

public class C4BreakContinue {

    public static void main(String[] args) {
        for (int i = 0; i < 10; i++) {
            if (i % 2 == 0) {
                System.out.println(i);
                break;
            }
        }

        for (int i = 0; i < 10; i++) {
            if (i % 2 != 0) {
                continue;
            }
            System.out.println(i);
        }
    }

}
