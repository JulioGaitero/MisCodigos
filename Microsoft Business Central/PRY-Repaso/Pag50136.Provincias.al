page 50136 Provincias
{
    ApplicationArea = All;
    Caption = 'Provincias';
    PageType = List;
    SourceTable = Provnicias;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Pais; Rec.Pais)
                {
                    ToolTip = 'Specifies the value of the Pais field.';
                }
                field(Provincia; Rec.Provincia)
                {
                    ToolTip = 'Specifies the value of the Provincia field.';
                }

                field(Prefijo; Rec.Prefijo)
                {
                    ToolTip = 'Specifies the value of the Provincia field.';
                }
            }
        }
    }
}
