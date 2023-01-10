report 50101 ReportPeliculas
{
    Caption = 'ReportPeliculas';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './src/Desarrolo 002/PagVideoClub/report/ReportPeliculas.rdl';
    dataset
    {
        dataitem(Pelicula; Pelicula)
        {
            column(Nombre; Nombre)
            {
            }
            column(Director; Director)
            {
            }
            column(FechaLanzamiento; "Fecha Lanzamiento")
            {
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
}
