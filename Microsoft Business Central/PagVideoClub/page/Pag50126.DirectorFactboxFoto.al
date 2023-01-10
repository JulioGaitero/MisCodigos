page 50126 DirectorFactboxFoto
{
    ApplicationArea = All;
    Caption = 'DirectorFactboxFoto';
    PageType = CardPart;
    SourceTable = Directores;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Foto Director"; Rec."Foto Director")
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
            }
        }
    }
}
