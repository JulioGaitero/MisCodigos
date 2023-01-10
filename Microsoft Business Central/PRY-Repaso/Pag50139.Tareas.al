page 50139 Tareas
{
    ApplicationArea = All;
    Caption = 'Tareas';
    PageType = ListPart;
    SourceTable = Tareas;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(idTarea; Rec.idTarea)
                {
                    ToolTip = 'Specifies the value of the idTarea field.';

                }
                field(Usuario; Rec.Usuario)
                {
                    ToolTip = 'Specifies the value of the Usuario field.';
                }
                field("Descripcion Tarea"; Rec."Descripcion Tarea")
                {
                    ToolTip = 'Specifies the value of the Descripcion Tarea field.';
                }
                field("Fecha Tarea"; Rec."Fecha Tarea")
                {
                    ToolTip = 'Specifies the value of the Fecha Tarea field.';
                }
                field(Aprobado; Rec.Aprobado)
                {
                    ToolTip = 'Specifies the value of the Aprobado field.';

                    trigger OnValidate()

                    begin


                    end;

                }
                field(Denegado; Rec.Denegado)
                {
                    ToolTip = 'Specifies the value of the Denegado field.';


                }
                field(Finalizado; Rec.Finalizado)
                {
                    ToolTip = 'Specifies the value of the Finalizado field.';




                }
                field(Nombre; Rec.Nombre)
                {

                }
            }
        }

    }

    trigger OnAfterGetRecord()
    var
        cuentaTablas: Record CueNumeroTablas;
    begin
        if cuentaTablas.Get(Rec.Usuario) then begin

        end else begin
            cuentaTablas.Init();
            cuentaTablas.Usuario := Rec.Usuario;
            cuentaTablas.Insert();
        end;

    end;

    var
        cueTareas: Page CueTareas;
        cueTareasRec: Record CueNumeroTablas;

}
