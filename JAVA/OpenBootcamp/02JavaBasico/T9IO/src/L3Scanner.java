import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.InputMismatchException;
import java.util.Scanner;

public class L3Scanner {

    public static void main(String[] args) throws FileNotFoundException {

        //Ficheros
        InputStream fichero = new FileInputStream("/home/Julio/Documentos/Programacion/JAVA/OpenBootcamp/02JavaBasico/T9IO/src/Fichero.txt");
        Scanner entradaFichero = new Scanner(fichero);

        //Teclado

        Scanner entradaTeclado = new Scanner(System.in);
        System.out.println("Intronce un numero: ");
        int a = entradaTeclado.nextInt();

        System.out.println(a);

        boolean ok = false;

        do{
            Scanner scanner = new Scanner(System.in);
            System.out.println("Mete dos numeros: ");
            try{
                int b = scanner.nextInt();
                int c = scanner.nextInt();
                ok = true;
            }catch (InputMismatchException e){
                System.out.println("Numeros invalidos");
            }
        }while (!ok);

    }

}
