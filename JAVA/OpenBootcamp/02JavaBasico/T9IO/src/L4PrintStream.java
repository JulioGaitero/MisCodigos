import java.io.*;

public class L4PrintStream {

    public static void main(String[] args) throws IOException {

        PrintStream info = new PrintStream("/home/Julio/Documentos/Programacion/JAVA/OpenBootcamp/02JavaBasico/T9IO/src/Fichero2.txt");
        info.println("Hola");

        InputStream in = new FileInputStream("/home/Julio/Documentos/Programacion/JAVA/OpenBootcamp/02JavaBasico/T9IO/src/Fichero2.txt");
        byte[] datos = in.readAllBytes();

        PrintStream out = new PrintStream("/home/Julio/Documentos/Programacion/JAVA/OpenBootcamp/02JavaBasico/T9IO/src/Fichero3.txt");
        out.write(datos);
        out.close();

    }

}
