table 50119 instructor
{
    Caption = 'instructor';
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
        field(3; "Interna / Externa"; Option)
        {
            Caption = 'Interna / Externa';
            DataClassification = ToBeClassified;
            OptionMembers = Interna,Externa;
        }
        field(4; "Nº de Recursos"; Code[20])
        {
            Caption = 'Nº de Recursos';
            DataClassification = ToBeClassified;
            TableRelation = Resource where(Type = const(Person));

            trigger OnValidate()

            begin
                if Rec.Nombre = '' then begin
                    importaRecurso.Get("Nº de Recursos");
                    Rec.Nombre := importaRecurso.Name
                end;
            end;
        }
        field(5; "Nº Contacto"; Code[20])
        {
            Caption = 'Nº Contacto';
            DataClassification = ToBeClassified;
            TableRelation = Contact;

            trigger OnValidate()

            begin
                if Rec.Nombre = '' then begin
                    importaContact.Get("Nº Contacto");
                    Rec.Nombre := importaContact.Name;
                end;
            end;
        }
    }
    keys
    {
        key(PK; Codigo)
        {
            Clustered = true;
        }
    }

    var
        importaContact: Record Contact;
        importaRecurso: Record Resource;
}
