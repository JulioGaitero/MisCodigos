page 50122 Resumen
{
    ApplicationArea = All;
    Caption = 'Resumen';
    PageType = Document;
    SourceTable = Pelicula;
    PromotedActionCategories = 'New caption,Process caption,Informes,PDF,Informes,Links,I/O';
    layout
    {
        area(content)
        {
            group("Ficha Pelicula")
            {
                field(Biografia; Rec.Biografia)
                {
                    ToolTip = 'Specifies the value of the Biografia field.';
                    Editable = false;
                }
                field(Director; Rec.Director)
                {
                    ToolTip = 'Specifies the value of the Fecha Lanzamiento field.';
                }
                field("Documento Biografia"; Rec."Documento Biografia")
                {
                    ToolTip = 'Suba el PDF con la biografia del Actor.';
                    Editable = false;
                }
                field("Fecha Lanzamiento"; Rec."Fecha Lanzamiento")
                {
                    ToolTip = 'Specifies the value of the Fecha Lanzamiento field.';
                }
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
            }

            group("Ficha Director")
            {


                part(DirectoreListPart; DirectoreListPart)
                {
                    SubPageLink = Nombre = field(Director);

                }
            }
            group(Actores)
            {


                part(ActoresListPart; ActoresListPart)
                {

                    SubPageLink = Pelicula = field(Nombre);

                }
            }

        }

        area(FactBoxes)
        {

            part(Directores; CaratulaFactbox)
            {
                ApplicationArea = All;
                Caption = 'Caratula';
                SubPageLink = Nombre = field(Nombre);

            }
            part(Pelicula; QrFactbox)
            {
                ApplicationArea = All;
                Caption = 'Codigo QR';
                SubPageLink = Nombre = field(Nombre);

            }

        }

    }
    actions
    {
        area(Processing)
        {
            action("Lista Actores")
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
            action("Lista Directores")
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
            action("Lista Peliculas")
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

            action("Informe General")
            {
                ApplicationArea = All;
                Image = Camera;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Report;
                trigger OnAction()
                var
                begin

                    Rec.SetFilter(Nombre, Rec.Nombre);
                    Report.Run(Report::ResumenReport, false, false, Rec);
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

