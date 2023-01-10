page 50114 ActoresList
{
    ApplicationArea = All;
    Caption = 'Pagina de Actores';
    PageType = List;
    SourceTable = Actores;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.id)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field(Apellidos; Rec.Apellidos)
                {
                    ToolTip = 'Specifies the value of the Apellidos field.';
                }
                field("Fecha Naciemiento"; Rec."Fecha Naciemiento")
                {
                    ToolTip = 'Specifies the value of the Fecha Naciemiento field.';
                }
                field(Biografia; Rec.Biografia)
                {
                    ToolTip = 'Specifies the value of the Biografia field.';
                }
                field(Pelicula; Rec.Pelicula)
                {
                    ToolTip = 'Specifies the value of the Biografia field.';
                }
                field(Foto; Rec."Foto Actor")
                {
                    ToolTip = 'Specifies the value of the Biografia field.';
                }


            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Informe Actores")
            {
                ApplicationArea = All;
                Image = ResetStatus;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    importaReport.Run();
                end;
            }
        }
    }
    var

        importaReport: Report ReportActores;

}

