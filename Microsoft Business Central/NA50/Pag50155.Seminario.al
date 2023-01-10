page 50155 Seminario
{
    ApplicationArea = All;
    Caption = 'Seminario';
    PageType = Card;
    SourceTable = Seminario;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Nº Serie"; Rec."Nº Serie")
                {
                    ToolTip = 'Specifies the value of the Nº Serie field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field("Nombre Buscado"; Rec."Nombre Buscado")
                {
                    ToolTip = 'Specifies the value of the Nombre Buscado field.';
                }
                field("Numero Trabajo"; Rec."Numero Trabajo")
                {
                    ToolTip = 'Specifies the value of the Numero Trabajo field.';
                }
                field(Bloqueado; Rec.Bloqueado)
                {
                    ToolTip = 'Specifies the value of the Bloqueado field.';
                }
                field(Comentario; Rec.Comentario)
                {
                    ToolTip = 'Specifies the value of the Comentario field.';
                }
                field("Duracion Seminario"; Rec."Duracion Seminario")
                {
                    ToolTip = 'Specifies the value of the Duracion Seminario field.';
                }
                field("Gen Prod"; Rec."Gen Prod")
                {
                    ToolTip = 'Specifies the value of the Gen Prod field.';
                }
                field(IVA; Rec.IVA)
                {
                    ToolTip = 'Specifies the value of the IVA field.';
                }
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.';

                    trigger OnAssistEdit()

                    begin
                        If Rec.AssistEdit() then
                            CurrPage.Update();
                    end;

                }
                field("Participantes Maximos"; Rec."Participantes Maximos")
                {
                    ToolTip = 'Specifies the value of the Participantes Maximos field.';
                }
                field("Participantes Minimos"; Rec."Participantes Minimos")
                {
                    ToolTip = 'Specifies the value of the Participantes Minimos field.';
                }
                field("Ultima Modificacion"; Rec."Ultima Modificacion")
                {
                    ToolTip = 'Specifies the value of the Ultima Modificacion field.';
                }
                field("Precio Seminario"; Rec."Precio Seminario")
                {
                    ToolTip = 'Specifies the value of the Precio Seminario field.';
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
                RunObject = page 50158;
                Caption = 'Lista Seminarios';

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
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Rec.Reset();
        if not rec.Find() then
            Rec.Insert(true);
    end;

    trigger OnAfterGetRecord()

    begin
        Rec.SetRange(No);
    end;

}

