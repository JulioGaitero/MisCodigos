xmlport 50105 ExportaPeliculas
{
    Caption = 'ExportaPeliculas';
    Format = VariableText;
    Direction = Export;
    TextEncoding = UTF8;
    UseRequestPage = false;
    TableSeparator = '';
    schema
    {
        textelement(Root)
        {
            tableelement(Pelicula; Pelicula)
            {
                XmlName = 'Pelicula';
                fieldelement(Id; Pelicula.Id)
                {
                }
                fieldelement(Director; Pelicula.Director)
                {
                }
                fieldelement(DocumentoBiografia; Pelicula."Documento Biografia")
                {
                }
                fieldelement(FechaLanzamiento; Pelicula."Fecha Lanzamiento")
                {
                }
                fieldelement(Nombre; Pelicula.Nombre)
                {
                }
                textelement(sinopsisPDF)
                {
                    trigger OnBeforePassVariable()

                    begin
                        sinopsisPDF := codePDF;
                    end;
                }
                textelement(fotoPelicula)
                {
                    trigger OnBeforePassVariable()
                    begin
                        fotoPelicula := codeFoto;
                    end;
                }
                trigger OnAfterGetRecord()
                begin

                end;

            }
        }
    }
    var
        base64: Codeunit "Base64 Convert";

        codePDF: Text;
        insPDF: InStream;
        outPDF: OutStream;

        codeFoto: Text;
        insFoto: InStream;
        outFoto: OutStream;
}
