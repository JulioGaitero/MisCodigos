codeunit 50101 IntercambioSueldoTrabajador
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::TabTrabajadores, 'OnAfterInsertEvent', '', true, true)]
    local procedure importarNombreUsuario(var Rec: Record TabTrabajadores)
    begin
        tabHoras.Init();
        tabHoras."Nº Trabajador" := Rec."Nº Usuario";
        tabHoras.Insert();
        tabSueldo.Init();
        tabSueldo."Nº Empleado" := Rec."Nº Usuario";
        tabSueldo.Insert();
    end;

    var
        tabSueldo: Record TabSueldo;
        tabHoras: Record TablaHoras;
}