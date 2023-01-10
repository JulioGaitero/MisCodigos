page 50158 "Lista Seminarios"
{
    ApplicationArea = All;
    Caption = 'Lista Seminarios';
    PageType = List;
    SourceTable = Seminario;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Nombre; Rec.Nombre)
                {
                    Width = 33;
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field(Bloqueado; Rec.Bloqueado)
                {
                    ToolTip = 'Specifies the value of the Bloqueado field.';
                    Caption = 'Blocked', Comment = 'ESP="Bloqueado"';
                }
                field(Comentario; Rec.Comentario)
                {
                    ToolTip = 'Specifies the value of the Comentario field.';
                }
                field("Duracion Seminario"; Rec."Duracion Seminario")
                {
                    Width = 33;
                    ToolTip = 'Specifies the value of the Duracion Seminario field.';
                }
                field("Gen Prod"; Rec."Gen Prod")
                {
                    ToolTip = 'Specifies the value of the Gen Prod field.';
                    Width = 33;
                }
                field(IVA; Rec.IVA)
                {
                    ToolTip = 'Specifies the value of the IVA field.';
                    Width = 33;
                }
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.';
                    Width = 33;
                }

                field("Nombre Buscado"; Rec."Nombre Buscado")
                {
                    ToolTip = 'Specifies the value of the Nombre Buscado field.';
                }
                field("Numero Trabajo"; Rec."Numero Trabajo")
                {
                    Width = 33;
                    ToolTip = 'Specifies the value of the Numero Trabajo field.';
                }
                field("Nº Serie"; Rec."Nº Serie")
                {
                    Width = 33;
                    ToolTip = 'Specifies the value of the Nº Serie field.';
                }
                field("Participantes Maximos"; Rec."Participantes Maximos")
                {
                    Width = 33;
                    ToolTip = 'Specifies the value of the Participantes Maximos field.';
                }
                field("Participantes Minimos"; Rec."Participantes Minimos")
                {
                    Width = 33;
                    ToolTip = 'Specifies the value of the Participantes Minimos field.';
                }
                field("Precio Seminario"; Rec."Precio Seminario")
                {
                    Width = 33;
                    ToolTip = 'Specifies the value of the Precio Seminario field.';
                }
                field("Ultima Modificacion"; Rec."Ultima Modificacion")
                {
                    Width = 33;
                    ToolTip = 'Specifies the value of the Ultima Modificacion field.';
                }
                field(Nombre2; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                    Caption = 'Nombre';
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
                Image = List;
                ShortcutKey = F5;
                RunObject = page 50155;
                RunPageLink = No = field(No);
                Caption = 'Card';

            }

            action(Comentarios)
            {
                ApplicationArea = All;
                Image = Comment;
                RunObject = page 124;
                RunPageLink = Code = field(No), "Table Name" = const(Seminario);
            }
            action(Textos)
            {
                ApplicationArea = All;
                Image = Text;
                RunObject = page 386;
                RunPageLink = "No." = field(No), "Table Name" = const(Seminario);
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
            actionref(Textos_; Textos)
            {

            }
        }
    }
}
