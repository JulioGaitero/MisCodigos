public class T9Herencia {

    public static void main(String[] args){

       CocheHerencia Ford = new CocheHerencia();
       Ford.matricula = "121212C";
       Ford.setSonido("Aiwa");
       System.out.println(Ford.CompruebaMatricula(Ford.matricula));
       System.out.println(Ford.sonido);
       Ford.getSonido();
       CocheHerencia Tesla = new CocheElectricoHerencia();
       Tesla.matricula = "121203C";
       System.out.println(Tesla.CompruebaMatricula(Tesla.matricula));

    }

}

abstract  class Vehiculo{
    int velocidadMaxima;
    String tipoGasolina;
    String matricula;
    String sonido;

    public Vehiculo(){
        System.out.println("Estoy en el vehiculo");
    }
    public boolean CompruebaMatricula(String matricula){

        if (matricula == "XXXXXXC"){
            return true;
        }else {
            return false;
        }

    }

    abstract  public String getSonido();

    abstract public void setSonido(String sonido);

}

class CocheHerencia extends  Vehiculo {

    public String getSonido(){
      System.out.println("Coche");
      return this.sonido ;
    }

    public void setSonido(String sonido){
        this.sonido = sonido;
    }

}

final class CocheElectricoHerencia extends CocheHerencia{

}

class moto extends Vehiculo{

    public String getSonido(){
        System.out.println("Moto");
        return this.sonido ;
    }

    public void setSonido(String sonido){
        this.sonido = sonido;
    }

}

class Motor{
    String tipoMotor;
    public Motor(){
        System.out.println("Estoy en el constructor de Motor");
    }
}






