package C2ProgramacionConJava.M19Archivos;

import java.io.FileNotFoundException;
import java.io.IOException;

public class TestArchivos {

    public static void main(String[] args) throws IOException {
        String nombreArchivo = "ManejoArchivos.txt";
        ManejoArchivos.crearArchivo(nombreArchivo);

        ManejoArchivos.escribirArchivo("Hola Mundo", nombreArchivo);
        ManejoArchivos.modificarArchivo("Adios Mundo", nombreArchivo);

        ManejoArchivos.leerArchivo(nombreArchivo);

    }

}
