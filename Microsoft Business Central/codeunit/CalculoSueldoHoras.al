codeunit 50102 CalculoSuedoHora
{
    trigger OnRun()
    begin

    end;


    [EventSubscriber(ObjectType::Table, Database::TablaHoras, 'OnAfterValidateEvent', 'Categoria', true, true)]

    local procedure calculaHoras2(CurrFieldNo: Integer; var Rec: Record TablaHoras; var xRec: Record TablaHoras)
    begin

        diasMes := calculaDia();


        if Rec."Nº de Horas" > diasMes then begin
            Rec."Exceso de Horas" := Rec."Nº de Horas" - diasMes;
            Rec."Dias Acumulados" := Rec."Exceso de Horas" / 8;

        end
        else begin
            Rec."Exceso de Horas" := 0;
            Rec."Dias Acumulados" := 0;
        end;

        case rec.Categoria of
            Enum::EnumCategorias::Ayudante:
                importaCategoria.Get(1);
            Enum::EnumCategorias::"Oficial 1":
                importaCategoria.Get(2);
            Enum::EnumCategorias::"Oficial 2":
                importaCategoria.Get(3);
            Enum::EnumCategorias::"Oficial 3":
                importaCategoria.Get(4);
            Enum::EnumCategorias::Maestro:
                importaCategoria.Get(5);
        end;
        sueldoHora := importaCategoria."Precio Hora";
        importarSueldo.Get(Rec."Nº Trabajador");
        begin
            importarSueldo.Sueldo := (Rec."Nº de Horas" * sueldoHora);
            importarSueldo."Sueldo Final" := (Rec."Nº de Horas" * sueldoHora) - (((Rec."Nº de Horas" * sueldoHora) * importarSueldo.IRPF) / 100);
            importarSueldo.Modify();
            importaGastos.gastosSueldos();
        end;



    end;

    [EventSubscriber(ObjectType::Table, Database::TablaHoras, 'OnAfterValidateEvent', 'Nº de Horas', true, true)]

    local procedure calculaHoras(CurrFieldNo: Integer; var Rec: Record TablaHoras; var xRec: Record TablaHoras)
    begin

        diasMes := calculaDia();


        if Rec."Nº de Horas" > diasMes then begin
            Rec."Exceso de Horas" := Rec."Nº de Horas" - diasMes;
            Rec."Dias Acumulados" := Rec."Exceso de Horas" / 8;
        end
        else begin
            Rec."Exceso de Horas" := 0;
            Rec."Dias Acumulados" := 0;
        end;

        case rec.Categoria of
            Enum::EnumCategorias::Ayudante:
                importaCategoria.Get(1);
            Enum::EnumCategorias::"Oficial 1":
                importaCategoria.Get(2);
            Enum::EnumCategorias::"Oficial 2":
                importaCategoria.Get(3);
            Enum::EnumCategorias::"Oficial 3":
                importaCategoria.Get(4);
            Enum::EnumCategorias::Maestro:
                importaCategoria.Get(5);
        end;
        sueldoHora := importaCategoria."Precio Hora";
        importarSueldo.Get(Rec."Nº Trabajador");
        begin
            importarSueldo.Sueldo := (Rec."Nº de Horas" * sueldoHora);
            importarSueldo."Sueldo Final" := (Rec."Nº de Horas" * sueldoHora) - (((Rec."Nº de Horas" * sueldoHora) * importarSueldo.IRPF) / 100);
            importarSueldo.Modify();
            importaGastos.gastosSueldos();
        end;



    end;

    [EventSubscriber(ObjectType::Table, Database::TabSueldo, 'OnAfterValidateEvent', 'IRPF', true, true)]
    local procedure calcularHoras3(var Rec: Record TabSueldo)
    begin

        importaHoras.Get(Rec."Nº Empleado");

        case importaHoras.Categoria of
            Enum::EnumCategorias::Ayudante:
                importaCategoria.Get(1);
            Enum::EnumCategorias::"Oficial 1":
                importaCategoria.Get(2);
            Enum::EnumCategorias::"Oficial 2":
                importaCategoria.Get(3);
            Enum::EnumCategorias::"Oficial 3":
                importaCategoria.Get(4);
            Enum::EnumCategorias::Maestro:
                importaCategoria.Get(5);
        end;
        sueldoHora := importaCategoria."Precio Hora";
        begin
            Rec.Sueldo := (importaHoras."Nº de Horas" * sueldoHora);
            Rec."Sueldo Final" := (importaHoras."Nº de Horas" * sueldoHora) - (((importaHoras."Nº de Horas" * sueldoHora) * Rec.IRPF) / 100);
            importaGastos.gastosSueldos();
        end;

    end;

    local procedure calculaDia(): Integer
    var
        myInt: Integer;
    begin
        fechaHoy := Today;
        mesFecha := Date2DMY(fechaHoy, 2);

        case mesFecha of
            1, 3, 5, 7, 8, 10, 12:
                diasMes := 31 * 6;
            4, 6, 9, 11:
                diasMes := 30 * 6;
            2:
                diasMes := 28 * 6;
        end;
        exit(diasMes);

    end;

    var

        importaGastos: Codeunit CalculoGastos;
        importaCategoria: Record TabCategorias;
        importarSueldo: Record TabSueldo;
        importaHoras: Record TablaHoras;
        fechaHoy: Date;
        mesFecha: Integer;
        diasMes: Integer;
        sueldoHora: Decimal;

}