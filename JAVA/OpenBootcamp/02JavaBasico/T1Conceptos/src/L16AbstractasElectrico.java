public class L16AbstractasElectrico  extends  L16AbstractasCoche{

    String Motor;

    public L16AbstractasElectrico(String Modelo, String Matricula, int Kilometros,String Motor) {
        super(Modelo, Matricula, Kilometros);
            this.Motor = Motor;
    }


    public void  mostrarCoche(){
        System.out.println(Modelo+ " " + Matricula + " " + Kilometros + " " + Motor);
    }


}
