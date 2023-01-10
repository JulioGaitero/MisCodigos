page 50104 PagAPIComunicacion
{
    ApplicationArea = All;
    Caption = 'PagAPIComunicacion';
    PageType = Card;
    SourceTable = TabTrabajadores;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Nombre; Rec.Nombre)
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
            group(API)
            {
                action(RecibirApi)
                {
                    ApplicationArea = All;
                    Promoted = true;
                    PromotedCategory = Process;
                    Image = Cloud;
                    PromotedIsBig = true;
                    trigger OnAction()
                    var
                        importaCode: Codeunit CodeApiComunicacion;
                    begin
                        importaCode.LlamadaAPIUsuarios();
                    end;

                }

            }


        }
    }
}
