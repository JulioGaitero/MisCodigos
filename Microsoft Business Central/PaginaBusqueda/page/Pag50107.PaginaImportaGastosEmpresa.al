page 50107 PaginaImportaGastosEmpresa
{
    ApplicationArea = All;
    Caption = 'PaginaImportaGastosEmpresa';
    PageType = ListPart;
    SourceTable = TabGastosEmpresa;
    SourceTableTemporary = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Fecha; Rec.Fecha)
                {
                    ToolTip = 'Specifies the value of the Fecha field.';
                }
                field("Gastos Sueldos"; Rec."Gastos Sueldos")
                {
                    ToolTip = 'Specifies the value of the Gastos Sueldos field.';
                }
                field(idGastos; Rec.idGastos)
                {
                    ToolTip = 'Specifies the value of the idGastos field.';
                }
                field(Aprobado; Rec.Aprobado)
                {
                    ToolTip = 'Specifies the value of the idGastos field.';
                }

            }
        }
    }

    procedure resetea()
    var
        importaGastos: Record TabGastosEmpresa;
        importaPagina: Page PaginaBusquedaGasto;
        myInt: Integer;
    begin
        Rec.DeleteAll();
        if importaGastos.FindSet() then
            repeat
                Clear(Rec);
                Rec.Init();
                Rec.Aprobado := importaGastos.Aprobado;
                Rec."Gastos Sueldos" := importaGastos."Gastos Sueldos";
                Rec.Aprobado := importaGastos.Aprobado;
                Rec.idGastos := importaGastos.idGastos;
                Rec.Fecha := importaGastos.Fecha;
                Rec.Insert();
            until importaGastos.Next() = 0;
    end;

    procedure filtrarCampos(Validado: Boolean)
    var
        importaGastos: Record TabGastosEmpresa;
        importaPagina: Page PaginaBusquedaGasto;
    begin
        Rec.DeleteAll();
        Rec.Reset();
        importaGastos.SetCurrentKey(Aprobado);
        importaGastos.SetRange(Aprobado, Validado);
        if importaGastos.FindSet() then
            repeat
                Clear(Rec);
                Rec.Init();
                Rec.Aprobado := importaGastos.Aprobado;
                Rec."Gastos Sueldos" := importaGastos."Gastos Sueldos";
                Rec.Aprobado := importaGastos.Aprobado;
                Rec.idGastos := importaGastos.idGastos;
                Rec.Fecha := importaGastos.Fecha;
                Rec.Insert();
            until importaGastos.Next() = 0;
    end;


    procedure filtrarCampoGasto(Gasto: Decimal)

    var
        importaGastos: Record TabGastosEmpresa;
        importaPagina: Page PaginaBusquedaGasto;
    begin
        Rec.DeleteAll();
        Rec.Reset();
        importaGastos.SetCurrentKey("Gastos Sueldos");
        importaGastos.SetRange("Gastos Sueldos", Gasto);
        if importaGastos.FindSet() then
            repeat
                Clear(Rec);
                Rec.Init();
                Rec.Aprobado := importaGastos.Aprobado;
                Rec."Gastos Sueldos" := importaGastos."Gastos Sueldos";
                Rec.Aprobado := importaGastos.Aprobado;
                Rec.idGastos := importaGastos.idGastos;
                Rec.Fecha := importaGastos.Fecha;
                Rec.Insert();
            until importaGastos.Next() = 0;
    end;

    trigger OnOpenPage()

    begin

        resetea();

    end;




}
