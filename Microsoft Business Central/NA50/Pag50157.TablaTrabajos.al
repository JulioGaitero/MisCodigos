page 50157 TablaTrabajos
{
    ApplicationArea = All;
    Caption = 'TablaTrabajos';
    PageType = List;
    SourceTable = Job;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Blocked; Rec.Blocked)
                {
                    ToolTip = 'Specifies that the related record is blocked from being posted in transactions, for example a customer that is declared insolvent or an item that is placed in quarantine.';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies a short description of the job.';
                }
            }
        }
    }
}
