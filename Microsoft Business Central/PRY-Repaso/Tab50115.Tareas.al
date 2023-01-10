table 50115 Tareas
{
    Caption = 'Tareas';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; idTarea; Code[30])
        {
            Caption = 'idTarea';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(2; Usuario; Code[12])
        {
            Caption = 'Usuario';
            DataClassification = ToBeClassified;
            TableRelation = UsuariosTabla.DNI;
        }
        field(3; "Descripcion Tarea"; Text[630])
        {
            Caption = 'Descripcion Tarea';
            DataClassification = ToBeClassified;
        }
        field(4; "Fecha Tarea"; Date)
        {
            Caption = 'Fecha Tarea';
            DataClassification = ToBeClassified;
        }
        field(5; Aprobado; Boolean)
        {
            Caption = 'Aprobado';

            DataClassification = ToBeClassified;
            trigger OnValidate()

            begin
                if Aprobado = true then begin
                    Denegado := false;
                end else begin
                    Denegado := true;
                end;
            end;
        }
        field(6; Denegado; Boolean)
        {
            Caption = 'Denegado';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if Denegado = true then begin
                    Aprobado := false;

                end else begin
                    Aprobado := true;
                end;

            end;
        }
        field(7; Finalizado; Boolean)
        {
            Caption = 'Finalizado';
            DataClassification = ToBeClassified;
        }
        field(8; Nombre; Text[33])
        {

            FieldClass = FlowField;
            CalcFormula = lookup(UsuariosTabla.Nombre where(DNI = field(Usuario)));
        }
        field(10; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }

    }


    keys
    {
        key(PK; idTarea)
        {
            Clustered = true;
        }
    }



    /*    trigger OnInsert()

        var
            tablaTareas: Record Tareas;

        begin

            if tablaTareas.FindLast() then begin
                idTarea := IncStr(tablaTareas.idTarea);
            end else begin
                tablaTareas.idTarea := 'TAR-00000';
            end;

            if Tarea = '' then begin
                salesSetup.Get();
                salesSetup.TestField(numeroTarea);
                NoSerieMgt.InitSeries(salesSetup.numeroTarea, xRec.Tarea, 0D, Tarea, Tarea);
            end;

        end;

        */

    trigger OnInsert()

    begin
        if idTarea = '' then begin
            salesSetup.Get();
            salesSetup.TestField(SerialNumber);
            NoSerieMgt.InitSeries(salesSetup.SerialNumber, xRec."No. Series", 0D, idTarea, "No. Series");
        end;
    end;


    var

        salesSetup: Record "tabla-configuracion";
        NoSerieMgt: Codeunit NoSeriesManagement;


}
