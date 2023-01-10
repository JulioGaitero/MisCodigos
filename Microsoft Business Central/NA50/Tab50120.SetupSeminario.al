table 50120 SetupSeminario
{
    Caption = 'SetupSeminario';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Clave Primaria"; Code[10])
        {
            Caption = 'Clave Primaria';
            DataClassification = ToBeClassified;
        }
        field(2; "Numero Seminar "; Code[10])
        {
            Caption = 'Numero Seminar ';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(3; "Numero Registro Seminario"; Code[10])
        {
            Caption = 'Numero Registro Seminario';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(4; "Numero Registro Posted"; code[10])
        {
            Caption = 'Numero Registro Posted';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Clave Primaria")
        {
            Clustered = true;
        }
    }
}
