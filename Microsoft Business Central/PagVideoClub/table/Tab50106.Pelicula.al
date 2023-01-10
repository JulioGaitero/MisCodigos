table 50106 Pelicula
{
    Caption = 'Pelicula';
    DataClassification = ToBeClassified;
    fields
    {
        field(1; Id; Integer)
        {
            Caption = 'Id';
            DataClassification = ToBeClassified;
        }
        field(2; Nombre; Text[60])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;
        }
        field(3; "Fecha Lanzamiento"; Date)
        {
            Caption = 'Fecha Lanzamiento';
            DataClassification = ToBeClassified;
        }
        field(4; "Foto Pelicula"; Blob)
        {
            Caption = 'Foto Pelicula';
            DataClassification = ToBeClassified;
            SubType = Bitmap;

            trigger OnValidate()
            begin
                fotoSubida := true;
            end;
        }
        field(5; "Director"; Text[60])
        {
            Caption = 'Director';
            DataClassification = ToBeClassified;
            TableRelation = Directores.Nombre;
            ValidateTableRelation = false;
        }
        field(6; Biografia; Blob)
        {
            Caption = 'Biografia';
            DataClassification = ToBeClassified;
        }
        field(7; "Documento Biografia"; Text[30])
        {
            Caption = 'Biografia PDF';
        }
        field(8; "Coordinador tecnico"; Text[30])
        {
            Caption = 'Coordinador Tecnico';
        }
        field(9; "Codigo QR"; Media)
        {
            Caption = 'Codigo QR';
            DataClassification = ToBeClassified;
        }
    }




    keys
    {
        key(PK; Id, Nombre)
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

    internal procedure importaQR()
    var
        CoverInStream: InStream;
        FileName: Text;
        msgCambiaCover: Label 'The existing Cover will be replaced. Do you want to continue?';
    begin
        Rec.TestField(Id);
        if Rec."Codigo QR".HasValue then
            if not Confirm(msgCambiaCover, true) then exit;
        if UploadIntoStream('Import', '', 'All Files (*.*)|*.*', FileName, CoverInStream) then begin
            Rec."Codigo QR".ImportStream(CoverInStream, FileName);
            Rec.Modify(true);
        end;
    end;

    var
        fotoSubida: Boolean;


}
