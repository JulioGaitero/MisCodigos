page 50149 Testeo
{
    ApplicationArea = All;
    Caption = 'Testeo';
    PageType = Document;

    layout
    {
        area(content)
        {
            group(General)
            {

            }
        }


    }

    actions
    {

        area(Processing)
        {

            group("Solos")
            {


                action(Prueba)
                {
                    ApplicationArea = All;
                    Image = Import;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;
                    trigger OnAction()
                    var
                        tabla: Record "Comment Line";
                    begin
                        Page.Run(0, tabla);
                    end;

                }
            }
        }
    }
}


