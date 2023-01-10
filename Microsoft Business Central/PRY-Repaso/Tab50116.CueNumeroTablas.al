table 50116 CueNumeroTablas
{
    Caption = 'CueNumeroTablas';
    DataClassification = ToBeClassified;

    fields
    {

        field(1; CuentaTareas; Integer)
        {
            Caption = 'Numero Tareas';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Tareas where(Usuario = field(Usuario)));
        }
        field(2; Usuario; Code[12])
        {
            Caption = 'Usuario';
        }
        field(3; CuentaAprobadas; Integer)
        {
            Caption = 'Cuenta Aprobadas';
            FieldClass = FlowField;
            CalcFormula = count(Tareas where(Usuario = field(Usuario), Aprobado = const(true)));
        }
        field(4; CuentaFinalizadas; Integer)
        {
            Caption = 'Cuenta Finalizadas';
            FieldClass = FlowField;
            CalcFormula = count(Tareas where(Usuario = field(Usuario), Finalizado = const(true)));
        }

    }
    keys
    {
        key(Usuario; Usuario)
        {
            Clustered = true;
        }
    }

    procedure calculaTareas()
    var
        myInt: Integer;
    begin

    end;

}
