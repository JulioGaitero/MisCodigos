package C2ProgramacionConJava.M17TiposGenericos;

public class TestGenericos {

    public static void main(String[] args) {
        ClaseGenerica<Integer> i = new ClaseGenerica<Integer>(10);
        i.mostrarTipo();

        ClaseGenerica<String> s = new ClaseGenerica<String>("Hola");
        s.mostrarTipo();
    }

}
