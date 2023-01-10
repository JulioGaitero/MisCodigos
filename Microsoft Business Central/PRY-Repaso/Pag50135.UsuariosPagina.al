page 50135 UsuariosPagina
{
    ApplicationArea = All;
    Caption = 'UsuariosPagina';
    PageType = Card;
    SourceTable = UsuariosTabla;

    layout
    {
        area(content)
        {
            group(General)
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
                field(Foto; Rec.Foto)
                {
                    ToolTip = 'Specifies the value of the Foto field.';
                }
                field("Fecha Nacimiento"; Rec."Fecha Nacimiento")
                {
                    ToolTip = 'Specifies the value of the Fecha Nacimiento field.';
                }
                field(DNI; Rec.DNI)
                {
                    ToolTip = 'Specifies the value of the DNI field.';
                }
                field(Categoria; Rec.Categoria)
                {
                    ToolTip = 'Specifies the value of the Categoria field.';
                }
                field(Direccion; Rec.Direccion)
                {
                    ToolTip = 'Specifies the value of the Direccion field.';
                }
                field(Pais; Rec.Pais)
                {
                    ToolTip = 'Specifies the value of the Pais field.';
                }
                field(Provincia; Rec.Provincia)
                {
                    ToolTip = 'Specifies the value of the Provincia field.';
                }
                field("Telefono Fijo"; Rec."Telefono Fijo")
                {
                    ToolTip = 'Specifies the value of the Telefono Fijo field.';
                }
                field("Telefono Movil"; Rec."Telefono Movil")
                {
                    ToolTip = 'Specifies the value of the Telefono Movil field.';
                }
                field(Turno; Rec.Turno)
                {
                    ToolTip = 'Specifies the value of the Turno field.';
                }
            }
        }
    }
}
