codeunit 50103 CalculoGastos
{
    trigger OnRun()
    begin

    end;

    var
    procedure gastosSueldos()
    begin
        importarSueldo.FindSet();
        repeat
            sumaSueldos := importarSueldo.Sueldo + sumaSueldos;
        until importarSueldo.Next() = 0;

        if (importaGastos.IsEmpty) then begin
            importaGastos.init;
            importaGastos.Fecha := Today();
            importaGastos."Gastos Sueldos" := 0;
            importaGastos.Insert();
        end;

        importaGastos.FindLast();
        Clear(importaGastos);
        if (importaGastos.Fecha = today()) then begin
            importaGastos."Gastos Sueldos" := sumaSueldos;
            importaGastos.Fecha := Today();
            importaGastos.Modify();
        end else begin
            importaGastos.Init();
            importaGastos."Gastos Sueldos" := sumaSueldos;
            importaGastos.Fecha := Today();
            importaGastos.Insert();
        end;
    end;

    var
        importaGastos: Record TabGastosEmpresa;
        importarSueldo: Record TabSueldo;
        sumaSueldos: Decimal;
}