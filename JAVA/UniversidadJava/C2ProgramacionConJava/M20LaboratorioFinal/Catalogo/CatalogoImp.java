package C2ProgramacionConJava.M20LaboratorioFinal.Catalogo;

import C2ProgramacionConJava.M20LaboratorioFinal.Acceso.AccesoDatos;
import C2ProgramacionConJava.M20LaboratorioFinal.Acceso.AccesoDatosImp;
import C2ProgramacionConJava.M20LaboratorioFinal.Excepciones.AccesoDatosEx;
import C2ProgramacionConJava.M20LaboratorioFinal.Excepciones.LecturaDatosEx;
import C2ProgramacionConJava.M20LaboratorioFinal.Pelicula.Pelicula;

public class CatalogoImp implements Catalogo {
    private final AccesoDatos datos;

    public CatalogoImp() {
        this.datos = new AccesoDatosImp();
    }

    @Override
    public void agregar(String nombrePelicula) {
        Pelicula pelicula = new Pelicula(nombrePelicula);
        boolean anexar = false;
        try {
            anexar = datos.existe(nombreArchivo);
            datos.escribir(nombreArchivo, pelicula, anexar);
        } catch (AccesoDatosEx e) {
            System.out.println("Error al anexar la pelicula");
            e.printStackTrace(System.out);
        }

    }

    @Override
    public void listarPeliculas() {
        try {
            var peliculas = datos.listar(nombreArchivo);
            for (Pelicula pelicula : peliculas) {
                System.out.println(pelicula);
            }
        } catch (AccesoDatosEx e) {
            System.out.println("Error de acceso datos");
            e.printStackTrace(System.out);
        }

    }

    @Override
    public void buscarPelicula(String nombrePelicula) {

        String resultado = "";
        try {
            resultado = datos.buscar(nombreArchivo, nombrePelicula);
        } catch (LecturaDatosEx e) {
            System.out.println("Error de lectura datos");
            e.printStackTrace(System.out);
        }
        System.out.println("Resultado: " + resultado);

    }

    @Override
    public void iniciarCatalogo() {

        try {
            if(this.datos.existe(nombreArchivo)) {
                this.datos.borrar(nombreArchivo);
                this.datos.crear(nombreArchivo);
            }else {
                this.datos.crear(nombreArchivo);
            }
        } catch (AccesoDatosEx e) {
            System.out.println("Error al iniciar catalogo peliculas");
            e.printStackTrace(System.out);
        }

    }
}
