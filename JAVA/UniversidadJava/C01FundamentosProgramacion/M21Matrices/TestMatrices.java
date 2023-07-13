package C1FundamentosProgramacion.M21Matrices;

public class TestMatrices {

    public static void main(String[] args) {
        int edades[][] = new int[5][5];
        int contador = 0;

        System.out.println(".o0 Array de edades 0o.\n");

        for (int i = 0; i < edades.length; i++) {
            for (int j = 0; j < edades[i].length; j++) {
                contador++;
                edades[i][j] = (int) (i + j + Math.random() * 100+1);
                System.out.println("La edad de la persona " +contador + " es: " + edades[i][j] + " años");
            }
            System.out.println();
        }

        edades[0][0] = 10;
        edades[0][1] = 20;
        edades[0][2] = 30;

        System.out.println(".o0 Modificamos el array 0o.\n");

        contador = 0;

        for(int i = 0; i < edades.length; i++){
            for(int j = 0; j < edades[i].length; j++){
                contador++;
                System.out.println("La edad de la persona " +contador + " es: " + edades[i][j] + " años");
            }
            System.out.println();
        }

        String frutas[][] = {{"Naranja","Limon"},{"Fresa","Plátano"}};

        System.out.println(".o0 Array frutas 0o.\n");

        for(int i = 0; i < frutas.length; i++){
            for(int j = 0; j < frutas[i].length; j++){
                System.out.print(frutas[i][j] + " ");
            }
            System.out.println(" ");
        }

    }

}
