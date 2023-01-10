page 50106 PaginaBusquedaGasto
{
    ApplicationArea = All;
    Caption = 'PaginaBusquedaGasto';
    PageType = Document;


    layout
    {
        area(content)
        {
            group(Filtrado)
            {
                field(Aprobado; Valido)
                {
                    trigger OnValidate()
                    var

                    begin

                        CurrPage.PaginaImportaGastosEmpresa.Page.filtrarCampos(Valido);
                        if esVisible = false then
                            esVisible := true
                        else begin
                            esVisible := false;
                        end;

                    end;
                }
                field(Gasto; Gasto)
                {
                    trigger OnValidate()
                    var

                    begin

                        CurrPage.PaginaImportaGastosEmpresa.Page.filtrarCampoGasto(Gasto);

                    end;
                }

            }

            group("Opciones Ocultas")

            {
                Visible = esVisible;
                field("Otras Opciones"; otrasOpciones)
                {

                }


            }

            group("Gastos Empresa")
            {
                part(PaginaImportaGastosEmpresa; PaginaImportaGastosEmpresa)
                {
                }
            }

        }
    }

    actions
    {
        area(Navigation)
        {
            action(Resetear)
            {
                ApplicationArea = All;
                Image = ResetStatus;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    CurrPage.PaginaImportaGastosEmpresa.Page.resetea();
                    esVisible := false;
                end;

            }
        }

    }

    trigger OnOpenPage()

    begin
        esVisible := false;
    end;

    var
        gastoSueldo: Decimal;
        Valido: Boolean;
        importaGastos: Record TabGastosEmpresa;
        Gasto: Decimal;
        otrasOpciones: Enum EnumCategorias;
        esVisible: Boolean;
}

