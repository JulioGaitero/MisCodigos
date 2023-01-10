table 50110 TabTrabajadores
{
    DataClassification = ToBeClassified;

    DrillDownPageId = 50110;

    fields
    {
        field(1; "Nº Usuario"; Integer)
        {
            DataClassification = CustomerContent;
            AutoIncrement = true;

        }
        field(2; Nombre; Text[20])
        {
            DataClassification = CustomerContent;

        }
        field(3; Apellidos; Text[40])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Telefono; Code[9])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Sexo; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Hombre,Mujer;
        }
    }

    keys
    {
        key(Key1; "Nº Usuario")
        {
            Clustered = true;
        }
    }

    var
        importaHoras: Record TablaHoras;
        importaSueldo: Record TabSueldo;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()

    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}