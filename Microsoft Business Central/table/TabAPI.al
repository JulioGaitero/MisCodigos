table 50102 TabAPI
{
    Caption = 'Tabla';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Numero"; Integer)
        {
            Caption = 'Numero';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
    }
    keys
    {
        key(PK; "Numero")
        {
            Clustered = true;
        }
    }
}
