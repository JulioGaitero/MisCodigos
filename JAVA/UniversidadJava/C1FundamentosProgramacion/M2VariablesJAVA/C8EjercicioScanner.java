package C1FundamentosProgramacion.M2VariablesJAVA;
import java.util.Scanner;
public class C8EjercicioScanner {

    public static void main(String[] args) {
        String tituloLibro = " ";
        String autorLibro = " ";

        Scanner entradaTeclado = new Scanner(System.in);
        System.out.println("Introduce el titulo: ");
        tituloLibro = entradaTeclado.nextLine();
        System.out.println("Introduce el nombre del autor: ");
        autorLibro = entradaTeclado.nextLine();

        System.out.println( tituloLibro + "Fue escrito por " +autorLibro);

    }



}
