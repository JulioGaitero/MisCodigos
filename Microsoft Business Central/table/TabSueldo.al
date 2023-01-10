table 50111 TabSueldo
{
    DataClassification = ToBeClassified;
    DrillDownPageId = 50111;
    fields
    {
        field(1; "Nº Sueldo"; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(2; "Nº Empleado"; Integer)
        {
            DataClassification = ToBeClassified;


        }
        field(3; "Sueldo"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(4; "IRPF"; Integer)
        {
            DataClassification = CustomerContent;
            MinValue = 2;
            InitValue = 2;
        }
        field(5; "Sueldo Final"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(6; "Nombre Empleado"; Text[20])
        {
            Caption = 'Nombre Empleado';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(TabTrabajadores.Nombre where("Nº Usuario" = field("Nº Empleado")));

        }


    }


    keys
    {
        key(Key1; "Nº Empleado")
        {
            Clustered = true;
        }
    }

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