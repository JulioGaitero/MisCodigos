table 50105 Actores
{
    Caption = 'Actores';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; id; Code[2])
        {
            Caption = 'id';
            DataClassification = ToBeClassified;
        }
        field(2; Nombre; Text[30])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;
        }
        field(3; Apellidos; Text[60])
        {
            Caption = 'Apellidos';
            DataClassification = ToBeClassified;
        }
        field(4; "Fecha Naciemiento"; Date)
        {
            Caption = 'Fecha Naciemiento';
            DataClassification = ToBeClassified;
        }
        field(5; Biografia; Blob)
        {
            Caption = 'Biografia';
            DataClassification = ToBeClassified;
        }
        field(6; "Documento Biografia"; Text[30])
        {
            Caption = 'Biografia PDF';
        }
        field(7; "Pelicula"; Text[60])
        {
            Caption = 'Pelicula';
            DataClassification = ToBeClassified;
            TableRelation = Pelicula.Nombre;
            ValidateTableRelation = false;
        }
        field(8; "Foto Actor"; Blob)
        {
            Caption = 'Foto Actor';
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
        key(PK; id)
        {
            Clustered = true;
        }
    }

    procedure MyProcedure()
    var
        myInt: Integer;
    begin

    end;

    var
        pdfSubido: Boolean;
        fotoSubida: Boolean;
}
