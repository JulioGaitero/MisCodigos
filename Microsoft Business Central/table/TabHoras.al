table 50113 TablaHoras
{
    DataClassification = ToBeClassified;
    DrillDownPageId = 50113;
    fields
    {
        field(1; "key"; Integer)
        {
            AutoIncrement = true;
        }
        field(2; "Nº Trabajador"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Nº de Horas"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Exceso de Horas"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Dias Acumulados"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Nombre Empleado"; Text[20])
        {
            Caption = 'Nombre Empleado';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(TabTrabajadores.Nombre where("Nº Usuario" = field("Nº Trabajador")));
        }
        field(7; Categoria; Enum EnumCategorias)
        {
            DataClassification = CustomerContent;

        }

    }

    keys
    {
        key(Key1; "Nº Trabajador")
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