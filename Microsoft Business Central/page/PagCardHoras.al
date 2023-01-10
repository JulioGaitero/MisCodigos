page 50116 Horas
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = TablaHoras;

    layout
    {
        area(Content)
        {
            group(Horas)
            {
                field("Nº de Horas"; Rec."Nº de Horas")
                {
                    ApplicationArea = All;
                }
                field("Exceso de Horas"; Rec."Exceso de Horas")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Dias Acumulados"; Rec."Dias Acumulados")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Categoria; Rec.Categoria)
                {
                    ApplicationArea = All;

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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}