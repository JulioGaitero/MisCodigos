page 50133 TablaDialogo
{
    ApplicationArea = All;
    Caption = 'Proceso Multiple';
    PageType = StandardDialog;


    layout
    {
        area(content)
        {

            field(Ok; multiOk)
            {
                trigger OnValidate()
                begin
                    multiBorrar := false;
                end;
            }
            field(Error; multiError)
            {
                trigger OnValidate()
                begin
                    multiBorrar := false;
                end;

            }
            field(Borrar; multiBorrar)
            {
                trigger OnValidate()
                begin
                    multiOk := false;
                    multiError := false;
                end;

            }

        }

    }


    internal procedure devuelveEstadosInternal() arrayMulti: array[3] of Boolean;
    begin
        Message('Hola');
    end;

    procedure devuelveEstados() arrayMulti: array[3] of Boolean;

    begin
        arrayMulti[1] := multiOk;
        arrayMulti[2] := multiError;
        arrayMulti[3] := multiBorrar;
    end;

    var
        arrayMulti: array[3] of Boolean;
        multiError: Boolean;
        multiOk: Boolean;
        multiBorrar: Boolean;
}

