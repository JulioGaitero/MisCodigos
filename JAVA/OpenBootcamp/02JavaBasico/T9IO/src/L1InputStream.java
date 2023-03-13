import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class L1InputStream {

    public static void main(String[] args) {

        try {
            InputStream ficheroTexto = new FileInputStream("/home/Julio/Documentos/Programacion/JAVA/OpenBootcamp/02JavaBasico/T9IO/src/Fichero.txt");
            try {

                // Para meter todos los datos en memoria, solo para datos pequeños.
                byte[] datosFichero = ficheroTexto.readAllBytes();

                for (byte dato : datosFichero) {
                    System.out.print((char) dato);
                }

                // Para ficheros mas grandes.
                int datosFichero2 = ficheroTexto.read();

                while(datosFichero2 != -1){
                    datosFichero2 = ficheroTexto.read();
                    System.out.print((char)datosFichero2);

                }

            } catch (IOException e) {
                System.out.println("No puedo leer el fichero: " + e.getMessage());
            }
        } catch (FileNotFoundException e) {
            System.out.println("Tenemos un problema:" + e.getMessage());
        }
    }

}
