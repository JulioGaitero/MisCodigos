report 50102 ReportDirectores
{
    ApplicationArea = All;
    Caption = 'ReportDirectores';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './src/Desarrolo 002/PagVideoClub/report/ReportDirectores.rdl';
    dataset
    {
        dataitem(Directores; Directores)
        {
            column(Nombre; Nombre)
            {
            }
            column(FechaNaciemiento; "Fecha Naciemiento")
            {
            }
            column(Biografia; Biografia)
            {
            }
            column(Edad; Edad)
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
