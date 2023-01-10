page 50102 PagAPI
{
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'PagAPI';
    PageType = List;
    SourceTable = TabAPI;


    layout
    {
        area(content)
        {
            group(General)
            {
                field(ID; Rec.Numero)
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
                        importaCode: Codeunit CodeAPI;
                    begin
                        importaCode.LlamadaAPI();
                    end;

                }

            }


        }
    }

}