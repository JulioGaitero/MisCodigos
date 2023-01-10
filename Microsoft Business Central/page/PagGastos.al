page 50101 PaginaGastos
{
    ApplicationArea = All;
    Caption = 'PaginaGastos';
    UsageCategory = Administration;
    PageType = List;
    SourceTable = TabGastosEmpresa;

    layout
    {
        area(content)
        {
            repeater(General)
            {

                field("Fecha"; Rec.Fecha)
                {
                    ApplicationArea = All;
                }

                field("Gastos Sueldo"; Rec."Gastos Sueldos")
                {
                    ApplicationArea = All;
                }
                field("Aprobado"; Rec.Aprobado)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
