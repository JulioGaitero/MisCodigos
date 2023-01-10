page 50125 DirectorFactbox
{
    ApplicationArea = All;
    Caption = 'DirectorFactbox';
    PageType = Document;
    SourceTable = Directores;

    layout
    {
        area(content)
        {
            group(Director)
            {
                field(Biografia; Rec.Biografia)
                {
                    ToolTip = 'Specifies the value of the Biografia field.';
                }
                field("Documento Biografia"; Rec."Documento Biografia")
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
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
            }

        }
        area(FactBoxes)
        {

            part(Directores; "DirectorFactboxFoto")
            {
                ApplicationArea = All;
                Caption = 'Foto del Director';
                SubPageLink = Nombre = field(Nombre);

            }

        }

    }

}
