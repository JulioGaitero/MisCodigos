xmlport 50106 ImportaPeliculas
{
    Caption = 'ImportaPeliculas';
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Pelicula; Pelicula)
            {
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
                textelement(PDFPelicula)
                {
                    TextType = BigText;
                }
                textelement(fotoPeli)
                {
                    TextType = BigText;
                }

                trigger OnBeforeInsertRecord()
                var
                begin
                    Pelicula.Biografia.CreateOutStream(outPelicula);
                    PDFPelicula.Write(outPelicula);
                    Pelicula.Biografia.CreateInStream(insPelicula);
                    insPelicula.Read(codePelicula);
                    Pelicula.Biografia.CreateOutStream(outPelicula);
                    base64.FromBase64(codePelicula, outPelicula);

                    Pelicula."Foto Pelicula".CreateOutStream(outFoto);
                    fotoPeli.Write(outPelicula);
                    Pelicula."Foto Pelicula".CreateInStream(insPelicula);
                    insFoto.Read(codeFoto);
                    Pelicula."Foto Pelicula".CreateOutStream(outFoto);
                    base64.FromBase64(codeFoto, outFoto);

                end;

            }
        }
    }

    var

        base64: Codeunit "Base64 Convert";

        insPelicula: InStream;
        outPelicula: OutStream;
        codePelicula: Text;

        insFoto: InStream;
        outFoto: OutStream;
        codeFoto: Text;

}
