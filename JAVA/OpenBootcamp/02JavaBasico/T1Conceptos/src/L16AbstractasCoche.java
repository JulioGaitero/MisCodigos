abstract public class L16AbstractasCoche {
    String Modelo;
    String Matricula;
    int Kilometros;

    public L16AbstractasCoche(String modelo, String matricula, int kilometros) {
        this.Kilometros = kilometros;
        this.Matricula = matricula;
        this.Modelo = modelo;
    }


    public void  mostrarCoche(){
        System.out.println(Modelo+ " " + Matricula + " " + Kilometros + " ");
    }

    public static void main(String[] args) {
        L16AbstractasCoche Hiunday = new L16AbstractasElectrico("Hiunday","232323L",120000,"230W");
        Hiunday.mostrarCoche();

        L16AbastractasGasolina Seat = new L16AbastractasGasolina("Seat","33431A",3433,"Gasolina");

        Seat.crearCocheDemo();
        Seat.mostrarCoche();

    }
}
