page 50121 UsuarioPelicula
{
    ApplicationArea = All;
    Caption = 'UsuarioPelicula';
    PageType = Card;
    SourceTable = Customer;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the customer''s name.';
                }
                field("Extension Usuarios"; Rec."Extension Usuarios")
                {
                    ToolTip = 'Specifies the value of the Extension Usuarios field.';
                }
            }
        }
    }
}
