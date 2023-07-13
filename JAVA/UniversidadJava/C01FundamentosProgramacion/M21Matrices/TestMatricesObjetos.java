package C1FundamentosProgramacion.M21Matrices;

public class TestMatricesObjetos {

    public static void main(String[] args) {
        Persona personas[][] = new Persona[2][2];

        personas[0][0] = new Persona("Adrian");
        personas[0][1] = new Persona("Sara");
        personas[1][0] = new Persona("Jose");
        personas[1][1] = new Persona("Maria");

        for (int i = 0; i < personas.length; i++) {
            for (int j = 0; j < personas[i].length; j++) {
                System.out.println("Posicion de memoria: "+personas[i][j]);
                System.out.println("Nombre: " +personas[i][j].getNombre());
            }
        }

        System.out.println("\nImprimiendo desde la funcion imprimir\n");
        imprimir(personas);

    }
    
    public static void imprimir(Object matriz[][]){

        for (int i = 0; i < matriz.length ; i++) {
            for (int j = 0; j < matriz[i].length; j++) {

                System.out.println(matriz[i][j]);

            }
        }
        
    }

}
