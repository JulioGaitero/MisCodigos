package C1FundamentosProgramacion.M19Final;

public  class Persona {

    String nombre;

    Persona (String nombre) {
        this.nombre = nombre;
    }

    public final static int constante = 10;
    public final void imprimir() {
        System.out.println("Imprimir desde aqui.");
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
