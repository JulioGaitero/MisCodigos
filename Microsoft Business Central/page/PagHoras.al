page 50113 PagHoras
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TablaHoras;

    layout
    {
        area(Content)
        {
            repeater(Horas)
            {
                field("Nº Trabajador"; Rec."Nº Trabajador")
                {
                    ApplicationArea = All;

                }
                field("Nombre Trabajador"; Rec."Nombre Empleado")
                {
                    ApplicationArea = All;
                }
                field("Nº de Horas"; Rec."Nº de Horas")
                {
                    ApplicationArea = All;
                }
                field("Exceso de Horas"; Rec."Exceso de Horas")
                {
                    ApplicationArea = All;
                }
                field("Dias Acumulados"; Rec."Dias Acumulados")
                {
                    ApplicationArea = All;
                }
                field(Categoria; Rec.Categoria)
                {
                    ApplicationArea = All;

                }


            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}