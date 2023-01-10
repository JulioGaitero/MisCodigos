page 50152 SeminarioListaHabitaciones
{
    ApplicationArea = All;
    Caption = 'SeminarioListaHabitaciones';
    PageType = List;
    SourceTable = "Cuarto Seminario";
    CardPageId = 50150;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                    Editable = false;
                }
                field("Max Participantes"; Rec."Max Participantes")
                {
                    ToolTip = 'Specifies the value of the Max Participantes field.';
                    Editable = false;
                }
                field("No Recursos"; Rec."No Recursos")
                {
                    ToolTip = 'Specifies the value of the No Recursos field.';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Seminario)
            {
                ApplicationArea = All;
                Image = Home;
                ShortcutKey = F5;
                RunObject = page 50150;
                RunPageLink = Codigo = field(Codigo);
            }

            action(Comentarios)
            {
                ApplicationArea = All;
                Image = Home;
                ShortcutKey = F5;
                RunObject = page 124;
                RunPageLink = Code = field(Codigo), "Table Name" = const("Cuarto de Seminario");
            }
            action(Textos)
            {
                ApplicationArea = All;
                Image = Home;
                ShortcutKey = F5;
                RunObject = page 386;
                RunPageLink = "No." = field(Codigo);
            }
        }

        area(Promoted)
        {
            actionref(Seminario_; Seminario)
            {

            }

            actionref(Comentarios_; Comentarios)
            {

            }
        }
    }


}
