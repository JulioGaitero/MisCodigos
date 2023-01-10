pageextension 50101 PagVisibilidad extends "Order Processor Role Center"
{
    actions
    {

        addbefore(Action76)
        {

            group(VideoClub)
            {
                action("Lista Actores")
                {
                    Caption = 'Lista Actores';
                    ApplicationArea = All;
                    Image = User;
                    RunObject = Page ActoresForm;

                }
                action("Lista Directores")
                {
                    Caption = 'Lista Directores';
                    ApplicationArea = All;
                    Image = User;
                    RunObject = Page PagDirectoresForm;

                }
                action("Lista Peliculas")
                {
                    Caption = 'Lista Peliculas';
                    ApplicationArea = All;
                    Image = User;
                    RunObject = Page PeliculasForm;

                }
                action("Resumen Peliculas")
                {
                    Caption = 'Resumen Peliculas';
                    ApplicationArea = All;
                    Image = User;
                    RunObject = Page Resumen;

                }

            }
        }
    }

}

