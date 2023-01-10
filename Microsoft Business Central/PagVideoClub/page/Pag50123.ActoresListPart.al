page 50123 ActoresListPart
{
    ApplicationArea = All;
    Caption = 'ActoresListPart';
    PageType = ListPart;
    SourceTable = Actores;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Apellidos; Rec.Apellidos)
                {
                    ToolTip = 'Specifies the value of the Apellidos field.';
                }
                field(Biografia; Rec.Biografia)
                {
                    ToolTip = 'Specifies the value of the Biografia field.';
                }
                field("Documento Biografia"; Rec."Documento Biografia")
                {
                    ToolTip = 'Suba el PDF con la biografia del Actor.';
                }
                field("Fecha Naciemiento"; Rec."Fecha Naciemiento")
                {
                    ToolTip = 'Specifies the value of the Fecha Naciemiento field.';
                }
                field("Foto Actor"; Rec."Foto Actor")
                {
                    ToolTip = 'Specifies the value of the Biografia field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field(Pelicula; Rec.Pelicula)
                {
                    ToolTip = 'Specifies the value of the Biografia field.';
                }
                field(id; Rec.id)
                {
                    ToolTip = 'Specifies the value of the id field.';
                }
            }
        }
    }
}
