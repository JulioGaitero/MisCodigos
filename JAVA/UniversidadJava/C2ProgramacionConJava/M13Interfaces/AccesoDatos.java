package C2ProgramacionConJava.M13Interfaces;

public interface AccesoDatos {
    int maxRegistros = 10;
    void insertar();

    void listar();

    void buscar();

    void modificar();

    void eliminar();

}
