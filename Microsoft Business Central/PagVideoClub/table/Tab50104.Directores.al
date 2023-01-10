table 50104 Directores
{
    Caption = 'Directores';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; Id; Integer)
        {
            Caption = 'Id';
            DataClassification = ToBeClassified;
        }
        field(2; Nombre; Text[30])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;
        }
        field(4; "Fecha Naciemiento"; Date)
        {
            Caption = 'Fecha Naciemiento';
            DataClassification = ToBeClassified;
        }
        field(5; Edad; Integer)
        {
            Caption = 'Edad';
            DataClassification = ToBeClassified;
        }
        field(6; Biografia; Blob)
        {
            Caption = 'Biografia';
            DataClassification = ToBeClassified;

        }

        field(8; "Documento Biografia"; Text[30])
        {
            Caption = 'Biografia PDF';
        }
        field(7; "Foto Director"; Blob)
        {
            Caption = 'Foto Director';
            DataClassification = ToBeClassified;
            SubType = Bitmap;

            trigger OnValidate()
            begin
                fotoSubida := true;
            end;
        }

    }
    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Nombre)
        {
        }
    }

    var

        importaPeliculas: Record Pelicula;
        fotoSubida: Boolean;

}
