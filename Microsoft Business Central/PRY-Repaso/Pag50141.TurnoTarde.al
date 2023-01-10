page 50141 TurnoTarde
{
    ApplicationArea = All;
    Caption = 'TurnoTarde';
    PageType = ListPart;
    SourceTable = UsuariosTabla;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field("Primer Apellido"; Rec."Primer Apellido")
                {
                    ToolTip = 'Specifies the value of the Primer Apellido field.';
                }
                field("Segundo Apellido"; Rec."Segundo Apellido")
                {
                    ToolTip = 'Specifies the value of the Segundo Apellido field.';
                }
            }
        }
    }
}
