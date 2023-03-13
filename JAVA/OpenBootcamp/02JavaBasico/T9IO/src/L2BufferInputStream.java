import java.io.*;

public class L2BufferInputStream {

    public static void main(String[] args){

        try {

            InputStream fichero = new FileInputStream("/home/Julio/Documentos/Programacion/JAVA/OpenBootcamp/02JavaBasico/T9IO/src/Fichero.txt");
            BufferedInputStream ficheroBuffer = new BufferedInputStream(fichero);
            int dato = ficheroBuffer.read();
            while (dato != -1){
                System.out.print((char)dato);
                dato = ficheroBuffer.read();
            }


        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

}
