package C1FundamentosProgramacion.M10AlcanceVariables.LaboratorioCaja;

public class Caja {

    int ancho;
    int alto;
    int profundidad;

    public Caja(int ancho, int alto, int profundidad){
        this.ancho = ancho;
        this.alto = alto;
        this.profundidad = profundidad;
    }

    public Caja(){
    }

    public int calculaVolumen(){
        return ancho * alto * profundidad;
    }

}
