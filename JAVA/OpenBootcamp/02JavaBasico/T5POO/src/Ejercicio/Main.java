package Ejercicio;

public class Main {

    public static void main(String[] args){

    SmartPhone iphone = new  SmartPhone();
    iphone.setEsLibre(false);
    iphone.setAmperiosBateria(5200);
    iphone.setTieneFunda(false);
    iphone.LiberarMovil(true);

    SmartPhone xiaomiA1 = new SmartPhone(7,5200,"Android 4.3",4,false,false);

    xiaomiA1.LiberarMovil(true);


    SmartWatch xiaomiBand = new SmartWatch();
    xiaomiBand.setCargaSolar(false);
    xiaomiBand.setAmperiosBateria(720);
    xiaomiBand.setMaterialCorrea("Silicona");
    xiaomiBand.setNumeroPasos(0);

    xiaomiBand.cuentaPaso();

    SmartWatch appleWatch = new SmartWatch(2,800,"Os2",3,"Cuero","Marron",0,false);
    appleWatch.cuentaPaso();



    }

}
