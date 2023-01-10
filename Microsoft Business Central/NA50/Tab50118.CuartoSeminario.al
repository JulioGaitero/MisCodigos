table 50118 "Cuarto Seminario"
{
    Caption = 'Cuarto Seminario';
    LookupPageId = ListaCuartoSeminario;
    DataClassification = ToBeClassified;


    fields
    {
        field(1; Codigo; Code[10])
        {
            Caption = 'Codigo';
            DataClassification = ToBeClassified;
        }
        field(2; Nombre; Text[30])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;
        }
        field(3; Direccion; Text[30])
        {
            Caption = 'Direccion';
            DataClassification = ToBeClassified;
        }
        field(4; "Direccion 2"; Text[30])
        {
            Caption = 'Direccion 2';
            DataClassification = ToBeClassified;
        }
        field(5; Ciudad; Text[30])
        {
            Caption = 'Ciudad';
            DataClassification = ToBeClassified;
        }
        field(6; "Codigo Postal"; Code[10])
        {
            Caption = 'Codigo Postal';
            DataClassification = ToBeClassified;
            TableRelation = "Post Code".Code;
            trigger Onvalidate()
            var

            begin
                codigoPostal.ValidatePostCode(Rec.Ciudad, Rec."Codigo Postal", Rec.Provincia, Rec."Codigo Pais", true);
            end;

            trigger OnLookup()

            begin
                codigoPostal.LookupPostCode(Rec.Ciudad, Rec."Codigo Postal", Rec.Provincia, Rec."Codigo Pais");
            end;
        }
        field(7; "Telefono No"; Text[30])
        {
            Caption = 'Telefono No';
            DataClassification = ToBeClassified;
        }
        field(8; "Fax No"; Text[30])
        {
            Caption = 'Fax No';
            DataClassification = ToBeClassified;
        }
        field(9; "Nombre 2"; Text[50])
        {
            Caption = 'Nombre 2';
            DataClassification = ToBeClassified;
        }
        field(10; Contacto; Text[50])
        {
            Caption = 'Contacto';
            DataClassification = ToBeClassified;
        }
        field(11; Email; Text[80])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(12; "Pagina de Inicio"; Text[90])
        {
            Caption = 'Pagina de Inicio';
            DataClassification = ToBeClassified;
        }
        field(13; "Max Participantes"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Codigo Pais"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region".Code;
        }
        field(15; Asignacion; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16; "No Recursos"; Code[20])
        {
            TableRelation = Resource where(Type = const(Machine));

            trigger OnValidate()
            begin
                if resourceTable.Get("No Recursos") and (Nombre = '') then
                    Nombre := resourceTable.Name;
            end;
        }
        field(17; Comentario; Boolean)
        {

            FieldClass = FlowField;
            CalcFormula = exist("Comment Line" where("Table Name" = const("Cuarto de Seminario")));
        }
        field(18; "Opcion Interna/Externa"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Interna,Externa;
        }
        field(19; "Contacto No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Contact."No.";

            trigger OnValidate()

            begin
                if contactTable.Get("Contacto No") and (Nombre = '') then
                    Nombre := contactTable.Name
            end;
        }
        field(20; "E-mail"; Code[120])
        {
            DataClassification = ToBeClassified;
        }
        field(21; LinkExterno; Text[210])
        {
            DataClassification = ToBeClassified;
        }
        field(22; Provincia; Text[33])
        {
            DataClassification = ToBeClassified;
        }
        field(23; "Nombre Tabla"; Enum "Extended Text Table Name")
        {
            DataClassification = ToBeClassified;
        }

    }



    keys
    {
        key(PK; Codigo)
        {
            Clustered = true;
        }
        key(Key2; "No Recursos")
        {

        }
    }


    trigger OnDelete()
    begin


        commentTable.SetRange("Table Name", commentTable."Table Name"::"Cuarto de Seminario");
        commentTable.SetRange("No.", Codigo);
        if commentTable.FindSet() then
            commentTable.DeleteAll();



        extenderHeaderTable.SetRange("Table Name", extenderHeaderTable."Table Name"::"Cuarto de Seminario");
        extenderHeaderTable.SetRange("No.", Codigo);
        if extenderHeaderTable.FindSet() then
            extenderHeaderTable.DeleteAll(true);

    end;


    var
        codigoPostal: Record "Post Code";
        resourceTable: Record Resource;
        contactTable: Record Contact;
        commentTable: Record "Comment Line";
        extenderHeaderTable: Record "Extended Text Header";

}
