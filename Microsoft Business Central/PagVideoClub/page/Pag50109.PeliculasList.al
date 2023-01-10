/// <summary>
/// Page PeliculasList (ID 50109).
/// </summary>
page 50109 PeliculasList
{
    ApplicationArea = All;
    // Mostrar CardPage
    CardPageId = PeliculasForm;
    Caption = 'Lista de Peliculas';
    PageType = List;
    SourceTable = Pelicula;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.';
                }
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field("Foto Pelicula"; Rec."Foto Pelicula")
                {
                    ToolTip = 'Sube la portada de la pelicula';
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();
                    end;
                }
                field("Fecha Lanzamiento"; Rec."Fecha Lanzamiento")
                {
                    ToolTip = 'Specifies the value of the Fecha Lanzamiento field.';
                }
                field(Director; Rec.Director)
                {
                    ToolTip = 'Specifies the value of the Fecha Lanzamiento field.';
                    TableRelation = Directores.Nombre;
                }

            }
        }
    }
}
