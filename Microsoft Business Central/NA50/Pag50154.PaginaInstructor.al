page 50154 PaginaInstructor
{
    ApplicationArea = All;
    Caption = 'PaginaInstructor';
    PageType = Card;
    SourceTable = instructor;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field(Codigo; Rec.Codigo)
                {
                    ToolTip = 'Specifies the value of the Codigo field.';
                }
                field("Interna / Externa"; Rec."Interna / Externa")
                {
                    ToolTip = 'Specifies the value of the Interna / Externa field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field("Nº Contacto"; Rec."Nº Contacto")
                {
                    ToolTip = 'Specifies the value of the Nº Contacto field.';
                }
                field("Nº de Recursos"; Rec."Nº de Recursos")
                {
                    ToolTip = 'Specifies the value of the Nº de Recursos field.';
                }
            }
        }
    }
}
