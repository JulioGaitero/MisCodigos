page 50131 SubCode
{
    ApplicationArea = All;
    Caption = 'SubCode';
    PageType = List;
    SourceTable = SubCode;
    UsageCategory = Documents;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Due Date"; Rec."Due Date")
                {
                    ToolTip = 'Specifies the value of the Due Date field.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field.';
                }
                field("Posting No."; Rec."Posting No.")
                {
                    ToolTip = 'Specifies the value of the Posting No. field.';
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    ToolTip = 'Specifies the value of the Sell-to Customer Name field.';
                }
                field("Ship-to Contact"; Rec."Ship-to Contact")
                {
                    ToolTip = 'Specifies the value of the Ship-to Contact field.';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("VAT Reporting Date"; Rec."VAT Reporting Date")
                {
                    ToolTip = 'Specifies the value of the VAT Reporting Date field.';
                }
            }
        }
    }
}
