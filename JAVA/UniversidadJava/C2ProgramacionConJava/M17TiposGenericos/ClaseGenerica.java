package C2ProgramacionConJava.M17TiposGenericos;

public class ClaseGenerica<T> {

    private T objeto;

    public ClaseGenerica(T objeto){
        this.objeto = objeto;
    }

    public void mostrarTipo(){
        System.out.println("El tipo de objeto es: " + objeto.getClass());
    }

}
