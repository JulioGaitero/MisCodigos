public class L16AbastractasGasolina extends L16AbstractasCoche implements L17InterfaceCoche {

    String tipoCarburante;

    public L16AbastractasGasolina(String modelo, String matricula, int kilometros, String tipoCarburante) {
        super(modelo, matricula, kilometros);
        this.tipoCarburante = tipoCarburante;
    }

    public void mostrarCoche() {
        System.out.println(Modelo + " " + Matricula + " " + Kilometros + " " + tipoCarburante);
    }

    @Override
    public void crearCocheDemo() {
        System.out.println("Coche creado");
    }
}
