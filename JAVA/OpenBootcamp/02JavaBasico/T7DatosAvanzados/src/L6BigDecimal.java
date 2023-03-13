import java.math.BigDecimal;

public class L6BigDecimal {

    public static void main(String[] args){

        BigDecimal valorA = new BigDecimal(0.1f);
        BigDecimal valorB = new BigDecimal(4);
        BigDecimal valorResutlado = new BigDecimal(0);

        valorResutlado = valorA.multiply(valorB);

        System.out.println(valorResutlado);

        valorResutlado = valorA.add(valorB);

        System.out.println(valorResutlado);

    }

}
