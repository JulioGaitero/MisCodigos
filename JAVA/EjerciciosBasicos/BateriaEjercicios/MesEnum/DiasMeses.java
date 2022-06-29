package BateriaEjercicos.MesEnum;

public enum DiasMeses {

    ENERO(1,31),
    FEBRERO(2,28),
    MARZO(3,31),
    ABRIL(4,30),
    MAYO(5,31),
    JUNIO(6,30),
    JULIO(7,31),
    AGOSTO(8,31),
    SEPTIEMBRE(9,30),
    OCTUBRE(10,31),
    NOVIEMBRE(11,30),
    DICIEMBRE(12,31);

    private int numeroMes;
    private int numeroDias;

    private DiasMeses(int mes, int dias) {
        this.numeroMes = mes;
        this.numeroDias = dias;

    }

    public int getDias() {
        return numeroDias;
    }

    public int getMes() {
        return numeroMes;
    }

    @Override
    public String toString() {
        return "El mes "+this.name().toLowerCase()+" es el mes "+numeroMes+"º y tiene "+numeroDias+" dias";
    }

}
