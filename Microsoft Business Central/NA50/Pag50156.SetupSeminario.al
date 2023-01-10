page 50156 SetupSeminario
{
    ApplicationArea = All;
    Caption = 'SetupSeminario';
    PageType = Card;
    SourceTable = SetupSeminario;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Clave Primaria"; Rec."Clave Primaria")
                {
                    ToolTip = 'Specifies the value of the Clave Primaria field.';
                }
                field("Numero Registro Posted"; Rec."Numero Registro Posted")
                {
                    ToolTip = 'Specifies the value of the Numero Registro Posted field.';
                }
                field("Numero Registro Seminario"; Rec."Numero Registro Seminario")
                {
                    ToolTip = 'Specifies the value of the Numero Registro Seminario field.';
                }
                field("Numero Seminar "; Rec."Numero Seminar ")
                {
                    ToolTip = 'Specifies the value of the Numero Seminar  field.';
                }
            }
        }
    }
}
