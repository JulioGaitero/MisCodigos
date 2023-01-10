page 50140 "Turno Mañana"
{
    ApplicationArea = All;
    Caption = 'Turno Mañana';
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

                }
                field("Primer Apellido"; Rec."Primer Apellido")
                {

                }
                field("Segundo Apellido"; Rec."Segundo Apellido")
                {

                }

            }

        }

    }
}
