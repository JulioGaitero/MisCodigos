page 50134 PaginaProcesar
{
    ApplicationArea = All;
    Caption = 'PaginaProcesar';
    PageType = StandardDialog;


    layout
    {
        area(content)
        {
            field(Accion; accion)
            {
                ApplicationArea = All;


            }
        }
    }

    procedure GetAccion(): Enum EnumProcesar;

    begin

        exit(accion);
    end;


    var
        accion: Enum EnumProcesar;


}
