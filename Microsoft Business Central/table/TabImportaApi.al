table 50103 TabImportaApi
{
    Caption = 'TabImportaApi';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Numero Empleado"; Integer)
        {
            Caption = 'Numero Empleado';
            DataClassification = ToBeClassified;

        }
        field(2; "Nombre Empleado"; Text[50])
        {
            Caption = 'Nombre Empleado';
            DataClassification = ToBeClassified;
        }
        field(3; Sueldo; Decimal)
        {
            Caption = 'Sueldo';
            DataClassification = ToBeClassified;
        }
        field(4; IRPF; Integer)
        {
            Caption = 'IRPF';
            DataClassification = ToBeClassified;
        }
        field(5; "Sueldo Final"; Decimal)
        {
            Caption = 'Sueldo Final';
            DataClassification = ToBeClassified;
        }
        field(6; "idImporta"; Integer)
        {
            Caption = 'idImporta';
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
    }
    keys
    {
        key(PK; "Numero Empleado")
        {
            Clustered = true;
        }
    }
}
