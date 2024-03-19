package C2ProgramacionConJava.M12ClasesAbstractas;

public class Rectangulo extends FiguraGeometrica {

    public Rectangulo(String tipoFigura) {
        super(tipoFigura);
    }
    @Override
    public void dibujar() {
        System.out.println("Dibujando: " + this.getClass().getSimpleName());
    }
}
