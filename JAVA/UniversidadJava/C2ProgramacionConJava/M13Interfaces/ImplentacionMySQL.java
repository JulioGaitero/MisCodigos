package C2ProgramacionConJava.M13Interfaces;

public class ImplentacionMySQL implements AccesoDatos {

    @Override
    public void insertar() {
        System.out.println("Insertar desde MySQL");
    }

    @Override
    public void listar() {
        System.out.println("Listar desde MySQL");
    }

    @Override
    public void buscar() {
        System.out.println("Buscar desde MySQL");
    }

    @Override
    public void modificar() {
        System.out.println("Modificar desde MySQL");
    }

    @Override
    public void eliminar() {
        System.out.println("Eliminar desde MySQL");
    }

}
