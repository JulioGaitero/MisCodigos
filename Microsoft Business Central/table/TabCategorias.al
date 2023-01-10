table 50144 TabCategorias
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; idCategoria; Integer)
        {
            AutoIncrement = true;
            DataClassification = ToBeClassified;

        }
        field(2; Categoria; Text[12])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Precio Hora"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; idCategoria)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

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