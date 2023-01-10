page 50124 DirectoreListPart
{
    ApplicationArea = All;
    Caption = 'DirectoreListPart';
    PageType = CardPart;
    SourceTable = Directores;

    layout
    {
        area(content)
        {
            group(General)
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
                field("Foto Director"; Rec."Foto Director")
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
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
    }


}
