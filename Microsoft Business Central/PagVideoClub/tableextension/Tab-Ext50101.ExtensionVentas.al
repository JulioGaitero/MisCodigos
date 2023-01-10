tableextension 50101 ExtensionVentas extends "Sales Header"
{
    fields
    {
        modify("Sell-to Customer Name")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Customer.SetFilter(Name, "Sell-to Customer Name");
                Customer.FindFirst();
                Rec.Peliculas := Customer."Extension Usuarios";
            end;
        }

        field(50101; Peliculas; Text[60])
        {
            Caption = 'Pelicula';
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

}
