page 50153 PaginaTextosExtendidos
{
    ApplicationArea = All;
    Caption = 'PaginaTextosExtendidos';
    PageType = List;
    SourceTable = "Extended Text Header";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("All Language Codes"; Rec."All Language Codes")
                {
                    ToolTip = 'Specifies whether the text should be used for all language codes. If a language code has been chosen in the Language Code field, it will be overruled by this function.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the content of the extended item description.';
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ToolTip = 'Specifies a date on which the text will no longer be used on the item, account, resource or standard text.';
                }
                field("Finance Charge Memo"; Rec."Finance Charge Memo")
                {
                    ToolTip = 'Specifies whether the extended text will be available on finance charge memos.';
                }
                field("Language Code"; Rec."Language Code")
                {
                    ToolTip = 'Specifies the language that is used when translating specified text on documents to foreign business partner, such as an item description on an order confirmation.';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Prepmt. Purchase Credit Memo"; Rec."Prepmt. Purchase Credit Memo")
                {
                    ToolTip = 'Specifies whether the text will be available on prepayment purchase credit memos.';
                }
                field("Prepmt. Purchase Invoice"; Rec."Prepmt. Purchase Invoice")
                {
                    ToolTip = 'Specifies whether the text will be available on prepayment purchase invoices.';
                }
                field("Prepmt. Sales Credit Memo"; Rec."Prepmt. Sales Credit Memo")
                {
                    ToolTip = 'Specifies whether the text will be available on prepayment sales credit memos.';
                }
                field("Prepmt. Sales Invoice"; Rec."Prepmt. Sales Invoice")
                {
                    ToolTip = 'Specifies whether the text will be available on prepayment sales invoices.';
                }
                field("Purchase Blanket Order"; Rec."Purchase Blanket Order")
                {
                    ToolTip = 'Specifies whether the text will be available on purchase blanket orders.';
                }
                field("Purchase Credit Memo"; Rec."Purchase Credit Memo")
                {
                    ToolTip = 'Specifies whether the text will be available on purchase credit memos.';
                }
                field("Purchase Invoice"; Rec."Purchase Invoice")
                {
                    ToolTip = 'Specifies whether the text will be available on purchase invoices.';
                }
                field("Purchase Order"; Rec."Purchase Order")
                {
                    ToolTip = 'Specifies whether the text will be available on purchase orders.';
                }
                field("Purchase Quote"; Rec."Purchase Quote")
                {
                    ToolTip = 'Specifies whether the text will be available on purchase quotes.';
                }
                field("Purchase Return Order"; Rec."Purchase Return Order")
                {
                    ToolTip = 'Specifies whether the text will be available on purchase return orders.';
                }
                field(Reminder; Rec.Reminder)
                {
                    ToolTip = 'Specifies whether the extended text will be available on reminders.';
                }
                field("Sales Blanket Order"; Rec."Sales Blanket Order")
                {
                    ToolTip = 'Specifies whether the text will be available on sales blanket orders.';
                }
                field("Sales Credit Memo"; Rec."Sales Credit Memo")
                {
                    ToolTip = 'Specifies whether the text will be available on sales credit memos.';
                }
                field("Sales Invoice"; Rec."Sales Invoice")
                {
                    ToolTip = 'Specifies whether the text will be available on sales invoices.';
                }
                field("Sales Order"; Rec."Sales Order")
                {
                    ToolTip = 'Specifies whether the text will be available on sales orders.';
                }
                field("Sales Quote"; Rec."Sales Quote")
                {
                    ToolTip = 'Specifies whether the text will be available on sales quotes.';
                }
                field("Sales Return Order"; Rec."Sales Return Order")
                {
                    ToolTip = 'Specifies whether the text will be available on sales return orders.';
                }
                field("Service Credit Memo"; Rec."Service Credit Memo")
                {
                    ToolTip = 'Specifies that the extended text for an item, account or other factor will be available on service lines in service orders.';
                }
                field("Service Invoice"; Rec."Service Invoice")
                {
                    ToolTip = 'Specifies that the extended text for an item, account or other factor will be available on service lines in service orders.';
                }
                field("Service Order"; Rec."Service Order")
                {
                    ToolTip = 'Specifies that the extended text for an item, account or other factor will be available on service lines in service orders.';
                }
                field("Service Quote"; Rec."Service Quote")
                {
                    ToolTip = 'Specifies that the extended text for an item, account or other factor will be available on service lines in service orders.';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ToolTip = 'Specifies a date from which the text will be used on the item, account, resource or standard text.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
                field("Table Name"; Rec."Table Name")
                {
                    ToolTip = 'Specifies the value of the Table Name field.';
                }
                field("Text No."; Rec."Text No.")
                {
                    ToolTip = 'Specifies the value of the Text No. field.';
                }
            }
        }
    }
}
