pageextension 50102 ExtensionNoSerie extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("numeroTarea"; Rec.numeroTarea)
            {
                Caption = 'numeroTarea';
                ApplicationArea = All;
            }
        }
    }
}
