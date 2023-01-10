page 50145 CueTareas
{

    // ESTO ES EL CUE QUE SE MUESTRA EN PANTALLA
    ApplicationArea = All;
    Caption = 'CueTareas';
    PageType = CardPart;
    SourceTable = CueNumeroTablas;
    RefreshOnActivate = true;


    layout
    {
        area(content)
        {
            cuegroup(cuegroup1)
            {
                Caption = 'Tareas';


                field(CuentaTareas; Rec.CuentaTareas)
                {
                    ToolTip = 'Specifies the value of the Numero Tareas field.';
                    Caption = 'Totales';
                    Style = Attention;
                    StyleExpr = true;
                }
                field(CuentaAprobadas; Rec.CuentaAprobadas)
                {
                    ToolTip = 'Specifies the value of the Numero Tareas field.';
                    Caption = 'Aprobadas';
                }
                field(CuentaFinalizadas; Rec.CuentaFinalizadas)
                {
                    ToolTip = 'Specifies the value of the Numero Tareas field.';
                    Caption = 'Fianlizadas';
                }

            }
        }
    }

}
