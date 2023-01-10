page 50120 PagDirectoresForm
{
    ApplicationArea = All;
    Caption = 'PagDirectoresForm';
    PageType = Card;
    UsageCategory = Documents;
    SourceTable = Directores;
    PromotedActionCategories = 'New caption,Process caption,Report caption,PDF,Informes,Links,I/O';
    layout
    {
        area(content)
        {
            group(General)
            {

                field(Biografia; Rec."Documento Biografia")
                {
                    ToolTip = 'Specifies the value of the Biografia field.';

                    trigger OnAssistEdit()
                    var
                        myInt: Integer;
                    begin
                        importaFunciones.bajarPDFDirectores(Rec.id, Rec.Nombre, '');
                    end;
                }

                field(Edad; Rec.Edad)
                {
                    ToolTip = 'Specifies the value of the Edad field.';
                }
                field("Fecha Naciemiento"; Rec."Fecha Naciemiento")
                {
                    ToolTip = 'Specifies the value of the Fecha Naciemiento field.';
                }
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field("Foto Director"; Rec."Foto Director")
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Actores")
            {
                ApplicationArea = All;
                Image = ResetStatus;
                Promoted = true;
                PromotedCategory = Category6;
                trigger OnAction()
                var
                begin
                    Page.Run(Page::ActoresForm);
                end;
            }
            action("Directores")
            {
                ApplicationArea = All;
                Image = ResetStatus;
                Promoted = true;
                PromotedCategory = Category6;
                trigger OnAction()
                var
                begin
                    Page.Run(Page::PagDirectoresForm);
                end;
            }
            action("Peliculas")
            {
                ApplicationArea = All;
                Image = ResetStatus;
                Promoted = true;
                PromotedCategory = Category6;
                trigger OnAction()
                var
                begin
                    Page.Run(Page::PeliculasForm);
                end;
            }
            action("Importar Pdf")
            {
                ApplicationArea = All;
                Image = ResetStatus;
                Promoted = true;
                PromotedCategory = Category4;
                trigger OnAction()
                var
                    bajStream: OutStream;
                    tablActor: Record Actores;
                    subStream: InStream;
                    fichero: text;

                begin
                    importaFunciones.subirPDFDirectores(Rec.id, Rec.Nombre, '');
                end;
            }
            action("Exportar PDF")
            {
                ApplicationArea = All;
                Image = ResetStatus;
                Promoted = true;
                PromotedCategory = Category4;
                trigger OnAction()
                begin
                    importaFunciones.bajarPDFDirectores(Rec.id, Rec.Nombre, '');
                end;
            }
            action("Informe Directores")
            {
                ApplicationArea = All;
                Image = ResetStatus;
                Promoted = true;
                PromotedCategory = Category5;
                trigger OnAction()
                begin
                    importaReport.Run();
                end;
            }
            action("Exportar")
            {
                ApplicationArea = All;
                Image = Export;
                Promoted = true;
                PromotedCategory = Category7;
                trigger OnAction()
                begin
                    Xmlport.Run(Xmlport::ExportaDirectores, true, false);
                end;
            }
            action("Importar")
            {
                ApplicationArea = All;
                Image = Import;
                Promoted = true;
                PromotedCategory = Category7;
                trigger OnAction()
                begin
                    Xmlport.Run(Xmlport::ImportaDirectores, false, true);
                end;
            }

        }

    }

    var
        importaFunciones: Codeunit CodeVideoClub;
        importaReport: Report ReportDirectores;
        importaActores: Record Actores;
}
