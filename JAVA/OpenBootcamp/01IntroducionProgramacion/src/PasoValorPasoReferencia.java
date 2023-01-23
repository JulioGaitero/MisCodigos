public class PasoValorPasoReferencia {

    // En paso por valor pasamos una copia tanto del valor como del tipo de dato.
    // En paso por referencia apuntamos directamente a la direcion de memoria.
    public static void main(String[] args){

        // Paso por valor

        var valor = SumaValor(9,12);
        System.out.println(valor);

        //Paso por refrencia
        // Al crear el objeto le pasamos la direcion de memoria
        PasoReferencia miRefrencia = new PasoReferencia();
        miRefrencia.RestarReferencia();

        // Podemos ver la direcion de memoria en un paso por referencia.
        System.out.println(miRefrencia);
        System.out.println(miRefrencia.pasoReferencia);


    }

    public static int SumaValor(int a, int b){
        System.out.println(a + b);
        System.out.println(a - b);
        System.out.println(a * b);
        System.out.println(a / b);

        return a + b;
    }
}
class PasoReferencia{
    public int pasoReferencia = 9;
    public void RestarReferencia(){
        this.pasoReferencia--;
    }

}
