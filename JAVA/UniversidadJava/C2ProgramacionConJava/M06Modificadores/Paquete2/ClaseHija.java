package C2ProgramacionConJava.M06Modificadores.Paquete2;

import C2ProgramacionConJava.M06Modificadores.Paquete1.Clase2Protected;

public class ClaseHija extends Clase2Protected {

    public ClaseHija() {
        this.nombreProtected = "Variable con valor protected";
        System.out.println(this.nombreProtected);
        this.metodoProtected();
    }

}
