page 50105 PagImportaApi
{
    ApplicationArea = All;
    Caption = 'PagImportaApi';
    PageType = List;
    SourceTable = TabImportaApi;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Numero Empleado"; Rec."Numero Empleado")
                {
                    ApplicationArea = All;
                }
                field("Nombre Empleado"; Rec."Nombre Empleado")
                {
                    ApplicationArea = All;
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                }
                field("IRPF"; Rec.IRPF)
                {
                    ApplicationArea = All;
                }
                field("Sueldo Final"; Rec."Sueldo Final")
                {
                    ApplicationArea = All;
                }
                field("ID Importa"; Rec.idImporta)
                {
                    ApplicationArea = All;

                }

            }
        }
    }
}