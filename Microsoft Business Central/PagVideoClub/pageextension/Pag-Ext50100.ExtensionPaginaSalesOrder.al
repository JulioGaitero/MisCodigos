pageextension 50100 ExtensionPaginaSalesOrder extends "Sales Order"
{

    layout
    {
        addAfter("Order Date")
        {
            field(Peliculausuario; Rec.Peliculas)
            {
                ApplicationArea = All;
            }


        }
    }
}
