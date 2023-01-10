table 50109 TablaEnum
{
    Caption = 'TablaEnum';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Code[7])
        {
            Caption = 'Id';
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(2; Nombre; Text[21])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;

        }
        field(3; Apellidos; Text[21])
        {
            Caption = 'Apellidos';
            DataClassification = ToBeClassified;

        }
        field(4; Telefono; Code[14])
        {
            Caption = 'Telefono';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if codeReg.IsMatch(format(Rec.Telefono), '[6]{1}[0-9]{2}\-[0-9]{6}') or codeReg.IsMatch(format(Rec.Telefono), '\+[34{1}]\+[ {1}][6]{1}[0-9]{2}\-[0-9]{6}') then begin
                    rec.Telefono := '+34 ' + rec.Telefono
                end
                else begin
                    Message('El Formato del texto debe de ser 6XXXXXXXX');
                    rec.Telefono := xRec.Telefono;
                end;

            end;
        }
        field(5; Ciudad; Enum EnunModoal)
        {
            Caption = 'Ciudad';
            DataClassification = ToBeClassified;
        }
        field(6; Ok; Boolean)
        {
            Caption = 'Ok';
            DataClassification = ToBeClassified;
        }
        field(7; Error; Boolean)
        {
            Caption = 'Error';
            DataClassification = ToBeClassified;
        }
        field(8; Tipo; Enum EnunUsuarios)
        {
            Caption = 'Tipo Usuario';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                myInt: Integer;
            begin

                Rec.ID := ConvertStr(Rec.Id, 'USR', 'ADM');

                if Rec.Tipo = 1 then begin
                    Rec.ID := ConvertStr(Rec.Id, 'USR', 'ADM');
                end
                else begin
                    Rec.ID := ConvertStr(Rec.Id, 'ADM', 'USR');
                end;



            end;
        }
        field(9; primaria; BigInteger)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(10; menuBorrar; Boolean)
        {
            DataClassification = ToBeClassified;
        }



    }
    keys
    {
        key(primaria; primaria)
        {
            Clustered = true;
        }
        key(PK; Id)
        {
            Unique = true;
        }
    }

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        begin
            if xRec.Id = 'USR-999' then begin
                Message('No se pueden crear mas usuarios: 1000 Usuarios Creados');
                exit;
            end else begin
                if xRec.Id = 'ADM-999' then begin
                    Message('No se pueden crear mas usuarios: 1000 Usuarios Creados');
                    exit;
                end;
            end;
            if xRec.FindLast() then begin
                Rec.Id := IncStr(xRec.Id);
                Rec.ID := ConvertStr(Rec.Id, 'ADM', 'USR');

            end
            else begin
                Rec.Id := 'USR-001';
            end;

        end;
    end;

    var
        codeReg: Codeunit Regex;
        miDialogo: Dialog;


}
