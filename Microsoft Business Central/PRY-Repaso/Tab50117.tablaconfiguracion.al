table 50117 "tabla-configuracion"
{
    Caption = 'tabla-configuracion';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; idConfiguracion; Code[25])
        {
            Caption = 'Configuracion';
            DataClassification = ToBeClassified;
        }
        field(2; SerialNumber; Code[25])
        {
            Caption = 'SerialNumber';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(3; validarFijo; Boolean)
        {
            Caption = 'Validar Fijo';
        }
        field(4; validarMovil; Boolean)
        {
            Caption = 'Validar Movil';
        }
        field(5; validarDNI; Boolean)
        {
            Caption = 'Validar DNI';
        }
    }
    keys
    {
        key(PK; idConfiguracion)
        {
            Clustered = true;
        }
    }


}
