table 50112 UsuariosTabla
{

    DataClassification = ToBeClassified;

    fields
    {
        field(1; Nombre; Text[30])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;
        }
        field(2; "Primer Apellido"; Text[30])
        {
            Caption = 'Primer Apellido';
            DataClassification = ToBeClassified;
        }
        field(3; "Segundo Apellido"; Text[30])
        {
            Caption = 'Segundo Apellido';
            DataClassification = ToBeClassified;
        }
        field(4; Foto; Media)
        {
            Caption = 'Foto';
            DataClassification = ToBeClassified;

        }
        field(5; Direccion; Text[60])
        {
            Caption = 'Direccion';
            DataClassification = ToBeClassified;
        }
        field(6; DNI; Text[12])
        {
            Caption = 'DNI';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                recConfiguracion.Get();
                if recConfiguracion.validarDNI then begin
                    if codeReg.IsMatch(format(Rec.DNI), '[0-9]{8}\-[A-Z]{1}') then
                        Rec.DNI := Rec.DNI.ToUpper()
                    else begin
                        Rec.DNI := xRec.DNI;
                        Message('El formato del DNI debe de ser XXXXXXXX-X');
                    end;
                end;
            end;
        }
        field(7; "Fecha Nacimiento"; Date)
        {
            Caption = 'Fecha Nacimiento';
            DataClassification = ToBeClassified;
        }
        field(8; "Telefono Fijo"; Text[15])
        {
            Caption = 'Telefono Fijo';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                recConfiguracion.Get();
                if recConfiguracion.validarFijo then begin
                    if Rec.Pais.AsInteger() = 0 then begin
                        if codeReg.IsMatch(format(Rec."Telefono Fijo"), '[9]{1}[0-9]{2}\-[0-9]{6}') or codeReg.IsMatch(format(Rec."Telefono Fijo"), '\+[34{9}]\+[ {1}][6]{1}[0-9]{2}\-[0-9]{6}') then begin
                            rec."Telefono Fijo" := '+34 ' + rec."Telefono Fijo";
                        end
                        else begin
                            Message('El Formato del texto debe de ser 9XX-XXXXXX');
                            rec."Telefono Fijo" := xRec."Telefono Fijo";
                        end;
                    end else
                        if codeReg.IsMatch(format(Rec."Telefono Fijo"), '[9]{1}[0-9]{2}\-[0-9]{6}') or codeReg.IsMatch(format(Rec."Telefono Fijo"), '\+[33{9}]\+[ {1}][6]{1}[0-9]{2}\-[0-9]{6}') then begin
                            rec."Telefono Fijo" := '+33 ' + rec."Telefono Fijo"
                        end
                        else begin
                            Message('El Formato del texto debe de ser 9XX-XXXXXX');
                            rec."Telefono Fijo" := xRec."Telefono Fijo";
                        end;

                end;
            end;

        }
        field(9; "Telefono Movil"; Text[15])
        {
            Caption = 'Telefono Movil';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                recConfiguracion.Get();
                if recConfiguracion.validarMovil then begin



                    if Rec.Pais.AsInteger() = 0 then begin
                        if codeReg.IsMatch(format(Rec."Telefono Movil"), '[6]{1}[0-9]{2}\-[0-9]{6}') or codeReg.IsMatch(format(Rec."Telefono Movil"), '\+[34{6}]\+[ {1}][6]{1}[0-9]{2}\-[0-9]{6}') then begin
                            rec."Telefono Movil" := '+34 ' + rec."Telefono Movil"
                        end
                        else begin
                            Message('El Formato del texto debe de ser 6XX-XXXXXX');
                            rec."Telefono Movil" := xRec."Telefono Movil";
                        end;
                    end else
                        if codeReg.IsMatch(format(Rec."Telefono Movil"), '[6]{1}[0-9]{2}\-[0-9]{6}') or codeReg.IsMatch(format(Rec."Telefono Movil"), '\+[33{6}]\+[ {1}][6]{1}[0-9]{2}\-[0-9]{6}') then begin
                            rec."Telefono Movil" := '+33 ' + rec."Telefono Movil"
                        end
                        else begin
                            Message('El Formato del texto debe de ser 6XX-XXXXXX');
                            rec."Telefono Movil" := xRec."Telefono Movil";
                        end;
                end;

            end;
        }
        field(10; Pais; Enum Pais)
        {
            Caption = 'Pais';
            DataClassification = ToBeClassified;

            trigger OnValidate()

            begin
                If rec.Pais = Enum::Pais::"España" then begin
                    "Telefono Fijo" := "Telefono Fijo".Replace('+33', '+34');
                    "Telefono Movil" := "Telefono Movil".Replace('+33', '+34');


                end else begin
                    "Telefono Fijo" := "Telefono Fijo".Replace('+34', '+33');
                    "Telefono Movil" := "Telefono Movil".Replace('+34', '+33');

                end;
            end;

        }
        field(11; Provincia; Text[21])
        {

            Caption = 'Provincia';
            DataClassification = ToBeClassified;
            TableRelation = Provnicias where(Pais = field(Pais));
            trigger OnValidate()
            begin
                conversionTelefono := "Telefono Fijo".Substring(5, 3);
                tablaProvincias.Get(Provincia);
                Rec."Telefono Fijo" := "Telefono Fijo".Replace(conversionTelefono, tablaProvincias.Prefijo);
            end;
        }
        field(12; Turno; Enum Turno)
        {
            Caption = 'Turno';
            DataClassification = ToBeClassified;
        }
        field(13; Categoria; Enum Categoria)
        {
            Caption = 'Categoria';
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(PK; DNI)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Foto, Nombre, DNI)
        {

        }
    }

    internal procedure CambiarFotoP()
    var
        CoverInStream: InStream;
        FileName: Text;
        msgCambiaCover: Label 'The existing Cover will be replaced. Do you want to continue?';
    begin
        Rec.TestField(DNI);
        if Rec."Foto".HasValue then
            if not Confirm(msgCambiaCover, true) then exit;
        if UploadIntoStream('Import', '', 'All Files (*.*)|*.*', FileName, CoverInStream) then begin
            Rec.Foto.ImportStream(CoverInStream, FileName);
            Rec.Modify(true);
        end;
    end;

    var
        codeReg: Codeunit Regex;
        tablaProvincias: Record Provnicias;
        conversionTelefono: Text;

        recConfiguracion: Record "tabla-configuracion";



}
