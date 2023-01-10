page 50130 PaginaMenusNuevos
{
    ApplicationArea = All;
    Caption = 'PaginaMenusNuevos';
    PageType = Document;
    // PromotedActionCategories = 'New caption,Process caption,Informes,PDF,Informes,Links,I/O';


    layout
    {
        area(content)
        {
            group(General)
            {

            }
        }

    }

    actions
    {

        area(Processing)
        {

            action("Lista Actores 2")
            {
                Caption = 'Icono 1';
                ApplicationArea = All;
                Image = TestFile;
                trigger OnAction()
                var
                begin
                    Page.Run(Page::ActoresForm);
                end;
            }
            group(Paco)
            {


                action("Lista Actores")
                {
                    Caption = 'Icono 2';
                    ApplicationArea = All;
                    Image = TestFile;

                    trigger OnAction()
                    var
                    begin
                        Page.Run(Page::ActoresForm);
                    end;
                }
                action("Lista Directores")
                {
                    Caption = 'Icono 3';
                    ApplicationArea = All;
                    Image = TestFile;

                    trigger OnAction()
                    var
                    begin
                        Page.Run(Page::PagDirectoresForm);
                    end;
                }
                action("Lista Peliculas")
                {
                    Caption = 'Icono 4';
                    ApplicationArea = All;
                    Ellipsis = true;

                    Image = TestFile;

                    trigger OnAction()
                    var
                    begin
                        Page.Run(Page::PeliculasForm);
                    end;
                }

                action("Test Report")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Test Report';
                    Ellipsis = true;
                    Image = TestReport;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Category5;
                    ToolTip = 'View a test report so that you can find and correct any errors before you perform the actual posting of the journal or document.';

                    trigger OnAction()
                    begin
                    end;
                }
                action("Remove From Job Queue")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Remove From Job Queue';
                    Image = RemoveLine;
                    ToolTip = 'Remove the scheduled processing of this record from the job queue.';

                    trigger OnAction()
                    begin
                    end;
                }
                action(PrintToAttachment)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Attach as PDF';
                    Ellipsis = true;
                    Image = PrintAttachment;
                    ToolTip = 'Create a PDF file and attach it to the document.';

                    trigger OnAction()
                    var
                        SalesHeader: Record "Sales Header";
                        DocumentPrint: Codeunit "Document-Print";
                    begin

                        SalesHeader.SetRecFilter();

                    end;
                }

            }

        }

        area(Promoted)
        {
            group(Menu)
            {
                Image = CopyRouteVersion;

                actionref(ListaActores2; "Lista Actores 2")
                {

                }
                group(Submenu)
                {
                    Image = CopyRouteVersion;
                    Caption = 'SubMenu', Comment = 'Generated from the PromotedActionCategories property index 5.';
                    ShowAs = SplitButton;

                    actionref(ListaActores; "Lista Actores")
                    {
                    }
                    actionref(ListaDirectores; "Lista Directores")
                    {
                    }
                    actionref(ListaPeliculas; "Lista Peliculas")
                    {
                    }
                    actionref(ListaActores3; "Lista Actores 2")
                    {

                    }
                    actionref(ListaDirectores3; "Lista Directores")
                    {
                    }
                    actionref(ListaPeliculas4; "Lista Peliculas")
                    {
                    }
                    actionref(ListaActores34; "Lista Actores 2")
                    {

                    }
                    actionref(ListaActore21s; "Lista Actores")
                    {
                    }
                    actionref(ListaDirectore32s; "Lista Directores")
                    {
                    }
                    actionref(ListaPeliculas421; "Lista Peliculas")
                    {
                    }
                    actionref(ListaActores3121; "Lista Actores 2")
                    {

                    }
                    actionref(ListaDirectores312; "Lista Directores")
                    {
                    }
                    actionref(ListaPeliculas44321; "Lista Peliculas")
                    {
                    }
                    actionref(ListaActores3412321S; "Lista Actores 2")
                    {

                    }
                }
            }
            actionref(ListaActores453; "Lista Actores 2")
            {

            }
            actionref(ListaActore32s4; "Lista Actores 2")
            {

            }
            actionref(ListaActor23es4; "Lista Actores 2")
            {

            }
            actionref(ListaActo234res4; "Lista Actores 2")
            {

            }

            group(Menu2)
            {

                Image = CopyRouteVersion;

                Caption = 'SubMenu', Comment = 'Generated from the PromotedActionCategories property index 5.';

                actionref(ListaActores8; "Lista Actores")
                {
                }
                actionref(ListaDirectores5; "Lista Directores")
                {
                }
                actionref(ListaPeliculas6; "Lista Peliculas")
                {
                }
                actionref(ListaPeliculas7; "Lista Peliculas")
                {

                }
                actionref(ListaPeliculas8; "Remove From Job Queue") { }


                group(SubMenu2)
                {
                    Image = CopyRouteVersion;
                    actionref(ListaActores7; "Lista Actores 2")
                    {

                    }


                }

            }

        }

    }
}