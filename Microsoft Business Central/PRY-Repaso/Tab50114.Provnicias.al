table 50114 Provnicias
{
    Caption = 'Provnicias';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Provincia; Text[21])
        {
            Caption = 'Provincia';
            DataClassification = ToBeClassified;
        }
        field(2; Pais; Enum Pais)
        {
            Caption = 'Pais';
            DataClassification = ToBeClassified;
        }
        field(3; Prefijo; Text[3])
        {
            Caption = 'Prefijo';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Provincia)
        {
            Clustered = true;
        }
    }
}
