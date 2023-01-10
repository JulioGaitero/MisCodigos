page 50151 ListaCuartoSeminario
{
    ApplicationArea = All;
    Caption = 'ListaCuartoSeminario';
    PageType = List;
    SourceTable = "Cuarto Seminario";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Asignacion; Rec.Asignacion)
                {
                    ToolTip = 'Specifies the value of the Asignacion field.';
                }
                field(Ciudad; Rec.Ciudad)
                {
                    ToolTip = 'Specifies the value of the Ciudad field.';
                }
                field(Codigo; Rec.Codigo)
                {
                    ToolTip = 'Specifies the value of the Codigo field.';
                }
                field("Codigo Pais"; Rec."Codigo Pais")
                {
                    ToolTip = 'Specifies the value of the Codigo Pais field.';
                }
                field("Codigo Postal"; Rec."Codigo Postal")
                {
                    ToolTip = 'Specifies the value of the Codigo Postal field.';
                }
                field(Comentario; Rec.Comentario)
                {
                    ToolTip = 'Specifies the value of the Comentario field.';
                }
                field(Contacto; Rec.Contacto)
                {
                    ToolTip = 'Specifies the value of the Contacto field.';
                }
                field("Contacto No"; Rec."Contacto No")
                {
                    ToolTip = 'Specifies the value of the Contacto No field.';
                }
                field(Direccion; Rec.Direccion)
                {
                    ToolTip = 'Specifies the value of the Direccion field.';
                }
                field("Direccion 2"; Rec."Direccion 2")
                {
                    ToolTip = 'Specifies the value of the Direccion 2 field.';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field("Fax No"; Rec."Fax No")
                {
                    ToolTip = 'Specifies the value of the Fax No field.';
                }
                field("Max Participantes"; Rec."Max Participantes")
                {
                    ToolTip = 'Specifies the value of the Max Participantes field.';
                }
                field("No Recursos"; Rec."No Recursos")
                {
                    ToolTip = 'Specifies the value of the No Recursos field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field("Nombre 2"; Rec."Nombre 2")
                {
                    ToolTip = 'Specifies the value of the Nombre 2 field.';
                }
                field("Opcion Interna/Externa"; Rec."Opcion Interna/Externa")
                {
                    ToolTip = 'Specifies the value of the Opcion Interna/Externa field.';
                }
                field("Pagina de Inicio"; Rec."Pagina de Inicio")
                {
                    ToolTip = 'Specifies the value of the Pagina de Inicio field.';
                }
                field("Telefono No"; Rec."Telefono No")
                {
                    ToolTip = 'Specifies the value of the Telefono No field.';
                }
            }
        }
    }
}
