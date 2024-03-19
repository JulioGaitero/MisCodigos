package C2ProgramacionConJava.M13Interfaces;

public class ImplementacionOracle implements AccesoDatos {


    @Override
    public void insertar() {
        System.out.println("Insertar desde Oracle");
    }

    @Override
    public void listar() {
        System.out.println("Listar desde Oracle");
    }

    @Override
    public void buscar() {
        System.out.println("Buscar desde Oracle");
    }

    @Override
    public void modificar() {
        System.out.println("Modificar desde Oracle");
    }

    @Override
    public void eliminar() {
        System.out.println("Eliminar desde Oracle");
    }
}
