page 50127 CaratulaFactbox
{
    ApplicationArea = All;
    Caption = 'CaratulaFactbox';
    PageType = CardPart;
    SourceTable = Pelicula;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Foto Pelicula"; Rec."Foto Pelicula")
                {
                    ToolTip = 'Sube la portada de la pelicula';
                }
            }
        }
    }
}
