report 50104 Prueba
{
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'hola.rdl';
    Caption = 'Prueba';
    dataset
    {
        dataitem(Tareas; Tareas)
        {
            column(Aprobado; Aprobado)
            {
            }
            column(Denegado; Denegado)
            {
            }
            column(DescripcionTarea; "Descripcion Tarea")
            {
            }
            column(FechaTarea; "Fecha Tarea")
            {
            }
            column(Finalizado; Finalizado)
            {
            }
            column(NoSeries; "No. Series")
            {
            }
            column(Nombre; Nombre)
            {
            }
            column(SystemCreatedAt; SystemCreatedAt)
            {
            }
            column(SystemCreatedBy; SystemCreatedBy)
            {
            }
            column(SystemId; SystemId)
            {
            }
            column(SystemModifiedAt; SystemModifiedAt)
            {
            }
            column(SystemModifiedBy; SystemModifiedBy)
            {
            }
            column(Usuario; Usuario)
            {
            }
            column(idTarea; idTarea)
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
