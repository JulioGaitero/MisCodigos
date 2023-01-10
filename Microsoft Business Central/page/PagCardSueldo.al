page 50117 Sueldo
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = TabSueldo;

    layout
    {
        area(Content)
        {
            group("Sueldo Mes")
            {
                field(Sueldo; Rec.Sueldo)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(IRPF; Rec.IRPF)
                {
                    ApplicationArea = All;
                }
                field("Sueldo Final"; Rec."Sueldo Final")
                {
                    ApplicationArea = All;

                    Editable = false;
                }
            }
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

    var
        myInt: Integer;
}