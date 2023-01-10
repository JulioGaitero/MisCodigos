page 50129 TablasResumen
{
    ApplicationArea = All;
    Caption = 'TablasResumen';
    PageType = Document;
    SourceTable = 50107;


    layout
    {
        area(content)
        {
            group(General)
            {

                field(Tabla; Rec.Tabla)
                {
                    ApplicationArea = All;

                    trigger OnValidate()

                    begin

                        Tabla := Rec.Tabla;
                        CurrPage.TablaDetalle.Page.filtraTabla(Tabla);

                    end;
                }

            }
            part(TablaDetalle; TablaDetalle)
            {
                ApplicationArea = All;
            }
        }
    }

    var

        Tabla: Text[30];

}
