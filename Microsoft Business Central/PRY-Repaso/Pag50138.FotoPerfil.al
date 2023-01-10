page 50138 FotoPerfil
{
    ApplicationArea = All;
    Caption = 'FotoPerfil';
    PageType = CardPart;
    SourceTable = UsuariosTabla;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Foto; Rec.Foto)
                {
                    ToolTip = 'Specifies the value of the Foto field.';
                }
            }
        }
    }
}
