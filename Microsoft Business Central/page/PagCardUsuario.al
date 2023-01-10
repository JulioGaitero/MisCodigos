page 50115 Usuario
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = TabTrabajadores;

    layout
    {
        area(Content)
        {
            group(Usuario)
            {
                field("Nº Usuario"; Rec."Nº Usuario")
                {
                    ApplicationArea = All;
                    Editable = false;

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
            }

            group("Sueldo Mensual")
            {
                part(Sueldo; Sueldo)
                {
                    SubPageLink = "Nº Empleado" = field("Nº Usuario");
                }
            }

            group("Horas Mensuales")
            {
                part(Horas; Horas)
                {
                    SubPageLink = "Nº Trabajador" = field("Nº Usuario");
                }
            }


        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;

            }
        }
    }

    var
        myInt: Integer;
}