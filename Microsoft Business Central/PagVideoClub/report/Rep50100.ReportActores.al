report 50100 ReportActores
{
    ApplicationArea = All;
    Caption = 'ReportActores';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './src/Desarrolo 002/PagVideoClub/report/ReportActores.rdl';
    dataset
    {
        dataitem(Actores; Actores)
        {
            column(Nombre; Nombre)
            {
            }
            column(Apellidos; Apellidos)
            {
            }
            column(Pelicula; Pelicula)
            {
            }
            column(FechaNaciemiento; "Fecha Naciemiento")
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
