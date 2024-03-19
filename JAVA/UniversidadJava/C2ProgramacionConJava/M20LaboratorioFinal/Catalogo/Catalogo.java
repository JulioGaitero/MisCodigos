package C2ProgramacionConJava.M20LaboratorioFinal.Catalogo;

public interface Catalogo {

    String nombreArchivo = "Peliculas.txt";
    void agregar(String nombrePelicula);

    void listarPeliculas();

    void buscarPelicula(String nombrePelicula);

    void iniciarCatalogo();

}
