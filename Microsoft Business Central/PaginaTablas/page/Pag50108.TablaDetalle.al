page 50108 TablaDetalle
{
    ApplicationArea = All;
    Caption = 'TablaDetalle';
    PageType = ListPart;
    SourceTable = "Field";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the type of the field in the table, which indicates the type of data it contains.';
                }
                field("Type Name"; Rec."Type Name")
                {
                    ToolTip = 'Specifies the type of data.';
                }
                field(FieldName; Rec.FieldName)
                {
                    ToolTip = 'Specifies the name of the field in the table.';
                }
                field("Field Caption"; Rec."Field Caption")
                {
                    ToolTip = 'Specifies the caption of the field, that is, the name that will be shown in the user interface.';
                }
                field(TableName; Rec.TableName)
                {
                    ToolTip = 'Specifies the caption of the field, that is, the name that will be shown in the user interface.';

                }
            }
        }

    }

    procedure filtraTabla(Tabla: Text[30])

    begin
        CurrPage.Update();
        Rec.SetFilter(TableName, Tabla);
    end;


}
