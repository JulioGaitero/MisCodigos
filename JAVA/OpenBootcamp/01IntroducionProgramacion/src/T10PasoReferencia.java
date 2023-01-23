public class T10PasoReferencia {

    public static void main(String[] args){

        producto Polen = new producto();

        System.out.println(sumaPeso(Polen));

    }

    public static int sumaPeso(producto Polen){

        return Polen.peso + 5;
    }

}

class producto{

 int codigo;
 int peso = 10;

}
