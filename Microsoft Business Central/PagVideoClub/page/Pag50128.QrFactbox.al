page 50128 QrFactbox
{
    ApplicationArea = All;
    Caption = 'QrFactbox';
    PageType = CardPart;
    SourceTable = Pelicula;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Codigo QR"; Rec."Codigo QR")
                {
                    ToolTip = 'Specifies the value of the Codigo QR field.';
                }
            }
        }
    }
}
