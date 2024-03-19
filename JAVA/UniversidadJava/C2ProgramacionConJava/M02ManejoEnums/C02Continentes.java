package C2ProgramacionConJava.M02ManejoEnums;

public enum C02Continentes {
    AFRICA(53,"1.2 billones"), AMERICA(34, "1.5 billones"),
    ASIA(44, "1.8 billones"), EUROPA(46, "2.0 billones"),
    OCEANIA(14,"0.5 billones");

    private final int numeroPaises;
    private final String habitantes;

    C02Continentes(int numeroPaises, String habitantes) {
        this.numeroPaises = numeroPaises;
        this.habitantes = habitantes;
    }

    public int getNumeroPaises() {
        return numeroPaises;
    }

    public String getHabitantes() {
        return habitantes;
    }
}
