page 50103 PagAPIUsuarios
{


    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'pagAPIUsuarios';
    DelayedInsert = true;
    EntityName = 'entityName';
    EntitySetName = 'entitySetName';
    PageType = API;
    SourceTable = TabSueldo;

    layout
    {
        area(content)
        {
            repeater(General)
            {

                field(numeroEmpleado; Rec."Nº Empleado")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(nombreEmpleado; Rec."Nombre Empleado")
                {
                    DrillDown = true;

                    ApplicationArea = All;
                }
                field(Sueldo; Rec.Sueldo)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(IRPF; Rec.IRPF)
                {
                    ApplicationArea = All;
                }
                field(sueldoFinal; Rec."Sueldo Final")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }
}
