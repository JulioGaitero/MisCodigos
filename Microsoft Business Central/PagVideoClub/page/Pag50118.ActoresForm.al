page 50118 ActoresForm
{
    ApplicationArea = All;
    Caption = 'ActoresForm';
    PageType = Card;
    SourceTable = Actores;
    PromotedActionCategories = 'New caption,Process caption,Informes,PDF,Informes,Links,I/O';


    layout
    {
        area(content)
        {
            group(General)
            {
                field(Apellidos; Rec.Apellidos)
                {
                    ToolTip = 'Specifies the value of the Apellidos field.';
                }
                field(Biografia; Rec."Documento Biografia")
                {
                    ToolTip = 'Suba el PDF con la biografia del Actor.';
                    trigger OnAssistEdit()
                    var
                        myInt: Integer;
                    begin
                        importaFunciones.bajarPDF(Rec.id, Rec.Nombre, Rec.Apellidos);
                    end;
                }
                field("Fecha Naciemiento"; Rec."Fecha Naciemiento")
                {
                    ToolTip = 'Specifies the value of the Fecha Naciemiento field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field(id; Rec.id)
                {
                    ToolTip = 'Specifies the value of the id field.';
                }
                field(Pelicula; Rec.Pelicula)
                {
                    ToolTip = 'Specifies the value of the Biografia field.';

                }
                field("Foto Actor"; Rec."Foto Actor")
                {

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
                Image = User;
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
                Image = UserInterface;
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
                Image = Camera;
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
                Image = SendEmailPDF;
                Promoted = true;
                PromotedCategory = Category4;
                trigger OnAction()
                var
                    bajStream: OutStream;
                    tablActor: Record Actores;
                    subStream: InStream;
                    fichero: text;

                begin
                    importaFunciones.subirPDF(Rec.id, Rec.Nombre, Rec.Apellidos);
                end;
            }
            action("Exportar PDF")
            {
                ApplicationArea = All;
                Image = SendAsPDF;
                Promoted = true;
                PromotedCategory = Category4;

                trigger OnAction()
                begin
                    importaFunciones.bajarPDF(Rec.id, Rec.Nombre, Rec.Apellidos);
                end;
            }
            action("Informe Actores")
            {
                ApplicationArea = All;
                Image = Report;
                Promoted = true;
                PromotedCategory = Category5;
                trigger OnAction()
                begin
                    importReport.Run();
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
                    Xmlport.Run(Xmlport::ExportarActores, true, false);
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
        }
    }

    var
        importaFunciones: Codeunit CodeVideoClub;
        importReport: Report ReportActores;


}


