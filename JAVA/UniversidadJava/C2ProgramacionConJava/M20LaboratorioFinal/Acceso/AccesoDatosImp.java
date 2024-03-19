package C2ProgramacionConJava.M20LaboratorioFinal.Acceso;

import C2ProgramacionConJava.M20LaboratorioFinal.Excepciones.AccesoDatosEx;
import C2ProgramacionConJava.M20LaboratorioFinal.Excepciones.EscrituraDatosEx;
import C2ProgramacionConJava.M20LaboratorioFinal.Excepciones.LecturaDatosEx;
import C2ProgramacionConJava.M20LaboratorioFinal.Pelicula.Pelicula;

import java.io.*;
import java.util.List;
import java.util.ArrayList;

public class AccesoDatosImp implements AccesoDatos {


    @Override
    public boolean existe(String nombreArchivo) throws AccesoDatosEx {

        File f = new File(nombreArchivo);
        return f.exists();

    }

    @Override
    public List<Pelicula> listar(String nombreArchivo) throws LecturaDatosEx {
        File f = new File(nombreArchivo);
        List<Pelicula> peliculas = new ArrayList();
        try {
            BufferedReader entrada = new BufferedReader(new FileReader(f));
            String linea;
            while ((linea = entrada.readLine()) != null) {
                var pelicula = new Pelicula(linea);
                peliculas.add(pelicula);
                linea = entrada.readLine();
            }
            entrada.close();
        } catch (FileNotFoundException e) {
            throw new LecturaDatosEx("Excepcion al listar peliculas" + e.getMessage());
        } catch (IOException e) {
            throw new LecturaDatosEx("Excepcion al listar peliculas" + e.getMessage());
        }
        return peliculas;
    }

    @Override
    public void escribir(String nombreArchivo, Pelicula peliculas, boolean agregar) throws EscrituraDatosEx {

        File archivo = new File(nombreArchivo);
        try {
            PrintWriter salida = new PrintWriter(new FileWriter(archivo, agregar));
            salida.println(peliculas.toString());
            salida.close();
            System.out.println("Se a escrito el archivo");
        } catch (IOException e) {
            throw new EscrituraDatosEx("Excepcion al listar peliculas" + e.getMessage());
        }

    }

    @Override
    public String buscar(String nombreArchivo, String nombrePelicula) throws LecturaDatosEx {
        File archivo = new File(nombreArchivo);
        String resultado = null;

        try {
            BufferedReader entrada = new BufferedReader(new FileReader(archivo));
            String linea = null;
            linea = entrada.readLine();
            int indice = 1;
            while (linea != null) {
                if (nombrePelicula != null && nombrePelicula.equalsIgnoreCase(linea)) {
                    resultado = linea;
                    break;
                }
                linea = entrada.readLine();
                indice++;
            }
            entrada.close();

        } catch (FileNotFoundException e) {
            throw new LecturaDatosEx("Excepcion al listar peliculas" + e.getMessage());
        } catch (IOException e) {
            throw new LecturaDatosEx("Excepcion al listar peliculas" + e.getMessage());
        }

        return resultado;
    }

    @Override
    public void crear(String nombreArchivo) throws AccesoDatosEx {
        File archivo = new File(nombreArchivo);
        try {
            PrintWriter salida = new PrintWriter(new FileWriter(archivo));
            salida.close();
            System.out.println("Se a creado el archivo");
        } catch (IOException e) {
            throw new AccesoDatosEx("Excepcion al crear archivo" + e.getMessage());
        }

    }

    @Override
    public void borrar(String nombreArchivo) throws AccesoDatosEx {
        File archivo = new File(nombreArchivo);
        if (archivo.exists()) {
            archivo.delete();
            System.out.println("Se ha borrado el archivo");
        }

    }
}
