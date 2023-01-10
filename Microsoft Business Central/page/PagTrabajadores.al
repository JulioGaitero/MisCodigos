page 50110 Trabajadores
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TabTrabajadores;
    DelayedInsert = true;
    CardPageId = Usuario;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Nº Usuario"; Rec."Nº Usuario")
                {
                    ApplicationArea = All;

                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }

                field(Apellidos; Rec.Apellidos)
                {
                    ApplicationArea = All;
                }
                field(Telefono; Rec.Telefono)
                {
                    ApplicationArea = All;
                }
                field(Sexo; Rec.Sexo)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}