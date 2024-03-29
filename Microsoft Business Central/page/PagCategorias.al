page 50144 PagCategorias
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TabCategorias;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Categoria; Rec.Categoria)
                {
                    ApplicationArea = All;

                }
                field("Precio Hora"; Rec."Precio Hora")
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