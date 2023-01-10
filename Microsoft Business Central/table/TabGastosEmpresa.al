table 50101 TabGastosEmpresa
{
    Caption = 'TabGastosEmpresa';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; idGastos; Integer)
        {
            Caption = 'idGastos';
            DataClassification = ToBeClassified;
            Editable = true;
            AutoIncrement = true;
        }
        field(2; "Gastos Sueldos"; Decimal)
        {
            Caption = 'Gastos Sueldos';
            DataClassification = ToBeClassified;
        }
        field(3; "Fecha"; Date)
        {
            Caption = 'Fecha';
            DataClassification = ToBeClassified;
        }
        field(4; "Aprobado"; Boolean)
        {
            Caption = 'Aprobado';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK; "Gastos Sueldos")
        {
            Clustered = true;
        }
    }
}
