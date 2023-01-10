report 50103 ResumenReport
{
    ApplicationArea = All;
    Caption = 'ResumenReport';
    UsageCategory = Documents;
    DefaultLayout = RDLC;
    RDLCLayout = './src/Desarrolo 002/PagVideoClub/report/ResumenReport.rdl';
    dataset
    {
        dataitem(Pelicula; Pelicula)
        {
            column(Biografia; Biografia)
            {
            }
            column(Director; Director)
            {
            }
            column(DocumentoBiografia; "Documento Biografia")
            {
            }
            column(FechaLanzamiento; "Fecha Lanzamiento")
            {
            }
            column(FotoPelicula; "Foto Pelicula")
            {
            }
            column(Id; Id)
            {
            }
            column(Nombre; Nombre)
            {
            }
            dataitem(Directores; Directores)
            {

                column(Fecha_Naciemiento; "Fecha Naciemiento")
                {

                }
                column(EdadDirector; Edad)
                {

                }
                column(NombreDirector; Nombre)
                {

                }
            }
            dataitem(Actores; Actores)
            {
                DataItemLink = Pelicula = field(Nombre);
                DataItemLinkReference = Pelicula;

                column(Actor; Nombre) { }
                column(Apellidos; Apellidos) { }
            }

        }

    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    var
        importaPeliculas: Record Pelicula;
}
