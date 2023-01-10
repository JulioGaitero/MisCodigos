tableextension 50100 ExtensionUsuarios extends Customer
{
    fields
    {
        field(50101; "Extension Usuarios"; Text[60])
        {
            Caption = 'Pelicula Favorita';
            DataClassification = ToBeClassified;
            TableRelation = Pelicula.Nombre;
        }
    }

    keys
    {
        key(PK; "Extension Usuarios")
        {

        }
    }
}


//The following field must be included into the table's primary key: Field: Pelicula Favorita Table: Customer