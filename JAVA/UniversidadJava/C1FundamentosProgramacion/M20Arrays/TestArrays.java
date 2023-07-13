package C1FundamentosProgramacion.M20Arrays;

public class TestArrays {

    public static void main(String[] args) {

        int edades[] = new int[5];
        System.out.println(edades);

        edades[0] = 10;
        edades[1] = 20;
        edades[2] = 30;
        edades[3] = 40;
        edades[4] = 50;

        System.out.println(edades[0]);

        for (int i = 0; i < edades.length; i++) {
            System.out.println("En la posicion: " + i + " la edad es: " + edades[i]);
        }

        System.out.println(" ");

        String frutas[] = {"Manzana", "Pera", "Plátano", "Naranja", "Uva"};

        for (int i = 0; i < frutas.length; i++) {

            System.out.print(frutas[i] + " ");

        }

    }

}
