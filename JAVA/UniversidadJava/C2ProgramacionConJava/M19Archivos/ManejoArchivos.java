package C2ProgramacionConJava.M19Archivos;

import java.io.*;

public class ManejoArchivos {

    public static void crearArchivo(String nombreArchivo) throws FileNotFoundException {
        File archivo = new File(nombreArchivo);
        PrintWriter salida = new PrintWriter(archivo);
        salida.close();
        System.out.println("Archivo creado");
    }

    public static void escribirArchivo(String texto, String nombreArchivo) throws FileNotFoundException {
        File archivo = new File(nombreArchivo);
        PrintWriter salida = new PrintWriter(archivo);
        salida.println(texto);
        salida.close();
        System.out.println("Archivo Escrito");
    }

    public static void modificarArchivo(String texto, String nombreArchivo) throws IOException {
        File archivo = new File(nombreArchivo);
        PrintWriter salida = new PrintWriter(new FileWriter(archivo, true));
        salida.println(texto);
        salida.close();
        System.out.println("Archivo Modificado");
    }

    public static void leerArchivo(String nombreArchivo) throws IOException {
        File archivo = new File(nombreArchivo);
        BufferedReader entrada = new BufferedReader(new FileReader(archivo));
        String linea;
        while ((linea = entrada.readLine()) != null) {
            System.out.println(linea);
        }
        entrada.close();
    }

}
