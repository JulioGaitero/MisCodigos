page 50112 PeliculasForm
{
    ApplicationArea = All;
    Caption = 'PeliculasForm';
    PageType = Card;
    SourceTable = Pelicula;
    PromotedActionCategories = 'New caption,Process caption,Report caption,PDF,Informes,Links,I/O';
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Fecha Lanzamiento"; Rec."Fecha Lanzamiento")
                {
                    ToolTip = 'Specifies the value of the Fecha Lanzamiento field.';
                }
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.';
                }
                field(Director; Rec.Director)
                {
                    ToolTip = 'Specifies the value of the Id field.';

                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field("Foto Pelicula"; Rec."Foto Pelicula")
                {
                    ToolTip = 'Sube la portada de la pelicula';
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();
                    end;
                }
                field(Biografia; Rec."Documento Biografia")
                {
                    ToolTip = 'Suba el PDF con la biografia del Actor.';
                    trigger OnAssistEdit()
                    var
                        myInt: Integer;
                    begin
                        importaFunciones.bajarPDFPeliculas(Rec.id, Rec.Nombre);
                    end;
                }
                field("Coordinador Tecnico"; Rec."Coordinador tecnico")
                {

                }
                field("Codigo QR"; Rec."Codigo QR")
                {
                    ApplicationArea = All;
                    ShowCaption = false;
                }
            }
        }

    }
    actions
    {

        area(Processing)
        {

            group("Solos")
            {


                action(Prueba)
                {
                    ApplicationArea = All;
                    Image = Import;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin

                    end;

                }
            }

            group(Normales)
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
                action("Informe Peliculas")
                {
                    ApplicationArea = All;
                    Image = ResetStatus;
                    Promoted = true;
                    PromotedCategory = Category5;
                    trigger OnAction()
                    begin
                        importReport.Run();
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
                        importaFunciones.subirPDFPeliculas(Rec.id, Rec.Nombre);
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
                        importaFunciones.bajarPDFPeliculas(Rec.id, Rec.Nombre);
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
                        Xmlport.Run(Xmlport::ExportaPeliculas, true, false);
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
                        Xmlport.Run(Xmlport::"ImportarActores", false, true);
                    end;
                }
                action("Importar Qr")
                {
                    ApplicationArea = All;
                    Image = Import;
                    Promoted = true;
                    PromotedCategory = Category7;
                    trigger OnAction()
                    begin
                        Rec.importaQR();
                    end;
                }

            }

        }

    }


    var
        DeleteImageQst: Label 'Are you sure you want to delete the cover art?';
        DeleteEnabled: Boolean;



    var
        importaFunciones: Codeunit CodeVideoClub;
        importReport: Report ReportPeliculas;

}
