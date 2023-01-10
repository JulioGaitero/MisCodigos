page 50147 "pagina-configuracion"
{
    ApplicationArea = All;
    Caption = 'Pagina Configuracion Extension';
    UsageCategory = Administration;
    PageType = Card;
    SourceTable = "tabla-configuracion";
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Configuracion; Rec.idConfiguracion)
                {
                    ToolTip = 'Specifies the value of the Configuracion field.';
                    Editable = false;
                }
                field(SerialNumber; Rec.SerialNumber)
                {
                    ToolTip = 'Specifies the value of the SerialNumber field.';
                }
                field(validarDNI; Rec.validarDNI)
                {

                }
                field(validarFijo; Rec.validarFijo)
                {

                }
                field(validarMovil; Rec.validarMovil)
                {

                }
            }
        }
    }
}
