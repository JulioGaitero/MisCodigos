page 50146 CueNumeroTablas
{
    ApplicationArea = All;
    Caption = 'Numero de Tablas';
    PageType = List;
    SourceTable = CueNumeroTablas;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(CuentaTareas; Rec.CuentaTareas)
                {
                    ToolTip = 'Specifies the value of the Numero Tareas field.';
                }

                field(usuario; Rec.Usuario)
                {
                    ToolTip = 'Specifies the value of the id field.';
                }
            }
        }
    }
}
