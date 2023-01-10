page 50119 PagDirectoresList
{
    ApplicationArea = All;
    Caption = 'Pagina Directores';
    PageType = List;
    SourceTable = Directores;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field(Biografia; Rec.Biografia)
                {
                    ToolTip = 'Specifies the value of the Biografia field.';
                }
                field(Edad; Rec.Edad)
                {
                    ToolTip = 'Specifies the value of the Edad field.';
                }
                field("Fecha Naciemiento"; Rec."Fecha Naciemiento")
                {
                    ToolTip = 'Specifies the value of the Fecha Naciemiento field.';
                }


            }
        }
    }
}
