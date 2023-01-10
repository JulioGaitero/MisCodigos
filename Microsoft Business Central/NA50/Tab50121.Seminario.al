table 50121 Seminario
{
    Caption = 'Seminario';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var

                setupPag: Record SetupSeminario;
                noSerie: Codeunit NoSeriesManagement;

            begin
                if No <> xRec.No then begin
                    setupPag.Get(0);
                    noSerie.TestManual(setupPag."Numero Seminar ");
                    "Nº Serie" := '';
                end;
            end;

        }
        field(2; Nombre; Text[50])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                myInt: Integer;
            begin
                If ("Nombre Buscado" = UpperCase(xRec.Nombre)) Or ("Nombre Buscado" = '') then
                    "Nombre Buscado" := Nombre;

            end;
        }
        field(3; "Duracion Seminario"; Decimal)
        {
            Caption = 'Duracion Seminario';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 1;
        }
        field(4; "Participantes Minimos"; Integer)
        {
            Caption = 'Participantes Minimos';
            DataClassification = ToBeClassified;
        }
        field(5; "Participantes Maximos"; Integer)
        {
            Caption = 'Participantes Maximos';
            DataClassification = ToBeClassified;
        }
        field(6; "Nombre Buscado"; Code[30])
        {
            Caption = 'Nombre Buscado';
            DataClassification = ToBeClassified;
        }
        field(7; Bloqueado; Boolean)
        {
            Caption = 'Bloqueado';
            DataClassification = ToBeClassified;
        }
        field(8; "Ultima Modificacion"; Date)
        {
            Caption = 'Ultima Modificacion';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(9; Comentario; Boolean)
        {
            Caption = 'Comentario';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = exist("Comment Line" where("Table Name" = const(Seminario)));
        }
        field(10; "Numero Trabajo"; Code[20])
        {
            Caption = 'Numero Trabajo';
            DataClassification = ToBeClassified;
            TableRelation = Job;
            trigger OnValidate()
            var
                importaJob: Record Job;
            begin
                importaJob.Get("Numero Trabajo");
                importaJob.TestField(Blocked, 0);
            end;
        }
        field(11; "Precio Seminario"; Decimal)
        {
            Caption = 'Precio Seminario';
            DataClassification = ToBeClassified;
            AutoFormatType = 1;
        }
        field(12; "Gen Prod"; Code[10])
        {
            Caption = 'Gen Prod';
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Product Posting Group";
            trigger OnValidate()
            var
                importGenProduct: Record "Gen. Business Posting Group";
                importaPostingGrout: Record "Gen. Product Posting Group";
            begin
                if xRec."Gen Prod" <> "Gen Prod" then begin
                    if
                    importaPostingGrout.ValidateVatProdPostingGroup(importaPostingGrout, Rec."Gen Prod")
                    then
                        Validate(IVA, importaPostingGrout."Def. VAT Prod. Posting Group");

                end;
            end;
        }
        field(13; IVA; Code[10])
        {
            Caption = 'IVA';
            DataClassification = ToBeClassified;
            TableRelation = "VAT Product Posting Group";
        }
        field(14; "Nº Serie"; Code[10])
        {
            Caption = 'Nº Serie';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "No. Series";


        }
    }

    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
        key(Nombre; Nombre)
        {

        }
    }

    procedure AssistEdit(): Boolean
    var
        Seminario: Record Seminario;
        seminarioSeptup: Record SetupSeminario;
        noSerie: Codeunit NoSeriesManagement;
    begin
        with Seminario do begin
            Seminario := Rec;
            seminarioSeptup.Get();
            seminarioSeptup.TestField(seminarioSeptup."Numero Seminar ");
            if noSerie.SelectSeries(seminarioSeptup."Numero Seminar ", xRec."Nº Serie", "Nº Serie") then begin
                seminarioSeptup.Get();
                seminarioSeptup.TestField("Numero Seminar ");
                noSerie.SetSeries(No);
                Rec := Seminario;
                exit(true);
            end;
        end;
    end;

    trigger OnInsert()
    var
        seminarioSeptup: Record SetupSeminario;
        noSerie: Codeunit NoSeriesManagement;
    begin
        if No = '' then begin
            seminarioSeptup.Get();
            seminarioSeptup.TestField("Numero Seminar ");
            noSerie.InitSeries(seminarioSeptup."Numero Seminar ", xRec.No, 0D, No, "Nº Serie");
        end;
    end;

    trigger OnModify()
    begin
        Rec."Ultima Modificacion" := Today;
    end;

    trigger OnDelete()

    var
        commentTable: Record "Comment Line";
        extenderHeaderTable: Record "Extended Text Header";

    begin
        commentTable.SetRange("No.", Rec.No);
        if commentTable.FindSet() then
            commentTable.DeleteAll();

        extenderHeaderTable.SetRange("No.", Rec.No);
        if extenderHeaderTable.FindSet() then
            extenderHeaderTable.DeleteAll(true);
    end;

}
