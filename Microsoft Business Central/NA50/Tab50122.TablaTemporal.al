table 50122 TablaTemporal
{
    Caption = 'TablaTemporal';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Id; Code[20])
        {
            Caption = 'Id';
            DataClassification = ToBeClassified;
        }
        field(2; Nombre; Text[20])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }
}
