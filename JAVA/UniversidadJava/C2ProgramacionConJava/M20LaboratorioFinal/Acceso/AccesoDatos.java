package C2ProgramacionConJava.M20LaboratorioFinal.Acceso;

import C2ProgramacionConJava.M20LaboratorioFinal.Excepciones.AccesoDatosEx;
import C2ProgramacionConJava.M20LaboratorioFinal.Excepciones.EscrituraDatosEx;
import C2ProgramacionConJava.M20LaboratorioFinal.Excepciones.LecturaDatosEx;
import C2ProgramacionConJava.M20LaboratorioFinal.Pelicula.Pelicula;

import java.util.List;

public interface AccesoDatos {
    boolean existe(String nombreArchivo) throws AccesoDatosEx;

    List<Pelicula> listar(String nombreArchivo) throws LecturaDatosEx;

    void escribir(String nombreArchivo, Pelicula peliculas, boolean agregar) throws EscrituraDatosEx;

    String buscar(String nombreArchivo, String nombrePelicula) throws LecturaDatosEx;

    void crear(String nombreArchivo) throws AccesoDatosEx;

    void borrar(String nombreArchivo) throws AccesoDatosEx;

}
