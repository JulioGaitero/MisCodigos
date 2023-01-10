table 50108 SubCode
{
    Caption = 'SubCode';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Sell-to Customer Name"; Text[100])
        {
            Caption = 'Sell-to Customer Name';
            DataClassification = ToBeClassified;
        }
        field(2; "Due Date"; Date)
        {
            Caption = 'Due Date';
            DataClassification = ToBeClassified;
        }
        field(3; "Ship-to Contact"; Text[100])
        {
            Caption = 'Ship-to Contact';
            DataClassification = ToBeClassified;
        }
        field(4; Status; Enum "Sales Document Status")
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
        }
        field(6; "Posting No."; Code[20])
        {
            Caption = 'Posting No.';
            DataClassification = ToBeClassified;
        }
        field(7; "VAT Reporting Date"; Date)
        {
            Caption = 'VAT Reporting Date';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Sell-to Customer Name", "Due Date")
        {
            Clustered = true;
        }
    }
}
