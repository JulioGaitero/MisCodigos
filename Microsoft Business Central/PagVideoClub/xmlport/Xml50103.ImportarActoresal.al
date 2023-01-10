xmlport 50103 "ImportarActores"
{
    Caption = 'ImportarActores.al';
    Format = VariableText;
    Direction = Import;
    TextEncoding = UTF8;
    UseRequestPage = false;
    TableSeparator = '<NewLine>';

    schema
    {
        textelement(Root)

        {
            tableelement(Actores; Actores)
            {
                XmlName = 'Actor';
                fieldelement(id; Actores.id)
                {

                }

                fieldelement(Nombre; Actores.Nombre)
                {

                }

                fieldelement(Apellidos; Actores.Apellidos)
                {

                }
                fieldelement(Fecha; Actores."Fecha Naciemiento")
                {

                }
                fieldelement(BiografiaPDF; Actores."Documento Biografia")
                {

                }

                fieldelement(Pelicula; Actores.Pelicula)
                {

                }
                textelement(PDF)
                {
                    TextType = BigText;

                }

                textelement(fotoPerfil)
                {
                    TextType = BigText;

                }

                trigger OnBeforeInsertRecord()
                var
                    myInt: Integer;
                begin
                    Actores.Biografia.CreateOutStream(textoOut);
                    PDF.Write(textoOut);
                    Actores.Biografia.CreateInStream(textoIns);
                    textoIns.Read(textoBiografia);
                    Actores.Biografia.CreateOutStream(textoOut);
                    base64.FromBase64(textoBiografia, textoOut);

                    Actores."Foto Actor".CreateOutStream(fotoOut);
                    fotoPerfil.Write(fotoOut);
                    Actores."Foto Actor".CreateInStream(fotoIns);
                    fotoIns.Read(fotoCode);
                    Actores."Foto Actor".CreateOutStream(fotoOut);
                    base64.FromBase64(fotoCode, fotoOut);


                end;
            }
        }
    }
    var
        importarCode: Codeunit CodeVideoClub;
        textoBiografia: Text;
        textoOut: OutStream;
        textoIns: InStream;
        base64: Codeunit "Base64 Convert";

        fotoOut: OutStream;
        fotoIns: InStream;
        fotoCode: Text;
}


