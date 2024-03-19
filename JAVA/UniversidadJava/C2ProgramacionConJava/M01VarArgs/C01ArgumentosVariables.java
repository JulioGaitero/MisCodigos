package C2ProgramacionConJava.M01VarArgs;

public class C01ArgumentosVariables {

    public static void main(String[] args) {
        imprimirNumeros(2,3,4,5,6,7,8,9,10);
        System.out.println("\nImprimimos otros números");
        imprimirNumeros(11,2,90,1);
        System.out.println("\nImprimimos usando la funcion varios parametros");
        variosParametros("Numeros :", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
    }

    private static void imprimirNumeros(int... numeros) {
        for (int i = 0; i < numeros.length; i++) {
            System.out.print(numeros[i] + " ");
        }
    }

    private static void variosParametros(String nombre, int... numeros) {
        System.out.print(nombre);
        imprimirNumeros(numeros);

    }

}
