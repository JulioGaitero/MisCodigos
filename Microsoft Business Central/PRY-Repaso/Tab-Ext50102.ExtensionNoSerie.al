tableextension 50102 ExtensionNoSerie extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; numeroTarea; Code[20])
        {
            Caption = 'numeroTarea';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }

    }
}
