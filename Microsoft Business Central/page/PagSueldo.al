page 50111 PagSueldo
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TabSueldo;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Nº Empleado"; Rec."Nº Empleado")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Nombre Empleado"; Rec."Nombre Empleado")
                {
                    DrillDown = true;

                    ApplicationArea = All;
                }
                field(Sueldo; Rec.Sueldo)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(IRPF; Rec.IRPF)
                {
                    ApplicationArea = All;
                }
                field("Sueldo Final"; Rec."Sueldo Final")
                {
                    Editable = false;
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