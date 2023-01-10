page 50132 PagEnum
{
    ApplicationArea = All;
    Caption = 'PagEnum';
    PageType = List;
    SourceTable = TablaEnum;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field(Apellidos; Rec.Apellidos)
                {
                    ToolTip = 'Specifies the value of the Apellidos field.';
                }
                field(Ciudad; Rec.Ciudad)
                {
                    ToolTip = 'Specifies the value of the Ciudad field.';
                }
                field(Telefono; Rec.Telefono)
                {
                    ToolTip = 'Specifies the value of the Telefono field.';
                }
                field("Tipo Usuario"; Rec.Tipo)
                {
                    ToolTip = 'Specifies the value of the Error field.';
                }

                field(Ok; Rec.Ok)
                {
                    ToolTip = 'Specifies the value of the Ok field.';
                }
                field(Error; Rec.Error)
                {
                    ToolTip = 'Specifies the value of the Error field.';
                }
            }

        }

    }
    actions
    {
        area(Processing)
        {
            action("Enum STR")
            {
                ApplicationArea = All;
                Image = Action;
                trigger OnAction()
                var
                    enumAcciones: Enum EnumProcesar;
                    interAcciones: Interface InterfaceProcesar;
                    etiquetasTexto: Label 'OK,Error,Borrar';
                    Seleciono: Integer;
                    Prueba: Integer;
                begin
                    enumAcciones := StrMenu(etiquetasTexto);
                    case enumAcciones of
                        1:
                            begin
                                Prueba := enumAcciones.AsInteger();
                                interAcciones := enumAcciones::ok;
                                interAcciones.procesarInterface();
                            end;
                        2:
                            begin
                                interAcciones := enumAcciones::ko;
                                interAcciones.procesarInterface();
                            end;
                        3:
                            begin
                                interAcciones := enumAcciones::borrar;
                                interAcciones.procesarInterface();
                            end;
                        else
                            Message('fuera');
                    end;
                end;

            }

            action("Proceso Multiple")
            {
                Caption = 'Proceso Multiple';
                ApplicationArea = All;
                Image = Process;
                trigger OnAction()
                var
                begin

                    Clear(miPagina);
                    miPagina.LookupMode(true);
                    CurrPage.SetSelectionFilter(miTabla);
                    if miTabla.FindSet() then begin


                        if miPagina.RunModal() = Action::LookupOK then begin

                            repeat

                                valorDevuelto := miPagina.devuelveEstados() [1];
                                if valorDevuelto = false then begin
                                    miTabla.Ok := false;
                                    miTabla.Modify();

                                end
                                else begin
                                    miTabla.Ok := true;
                                    miTabla.Modify();
                                end;

                                valorDevuelto := miPagina.devuelveEstados() [2];
                                if valorDevuelto = false then begin
                                    miTabla.Error := false;
                                    miTabla.Modify();
                                end
                                else begin
                                    miTabla.Error := true;
                                    miTabla.Modify();
                                end;

                                valorDevuelto := miPagina.devuelveEstados() [3];
                                if valorDevuelto = true then begin
                                    miTabla.Delete();

                                end;
                            until miTabla.Next() = 0;

                        end else begin

                        end;
                    end;
                end;
            }
            action("pInterface")
            {
                Caption = 'Proceso Interface';
                ApplicationArea = All;
                Image = Process;
                trigger OnAction()
                var
                begin
                    Clear(miPagina);
                    miPagProceso.LookupMode(true);
                    CurrPage.SetSelectionFilter(miTabla);
                    if miTabla.FindSet() then begin


                        if miPagProceso.RunModal() = Action::LookupOK then begin

                            repeat

                                miInterface := miPagProceso.GetAccion();
                                miInterface.procesarInterface();

                            until miTabla.Next() = 0;

                        end else begin

                        end;
                    end;
                end;
            }

        }

        area(Promoted)
        {
            actionref(Proceso; "Proceso Multiple")
            {

            }
            actionref("Proceso Interface"; pInterface)
            {

            }
            actionref("EnumSTR"; "Enum STR")
            {

            }

        }


    }
    var

        miTabla: Record TablaEnum;
        miPagina: Page TablaDialogo;
        miPagProceso: Page PaginaProcesar;
        valorDevuelto: Boolean;
        PagEnum: Page PagEnum;
        PaginaProcesar: Page PaginaProcesar;
        accion: Enum EnumProcesar;
        miInterface: Interface InterfaceProcesar;


}

