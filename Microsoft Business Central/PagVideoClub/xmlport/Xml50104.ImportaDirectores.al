xmlport 50104 ImportaDirectores
{
    Caption = 'ImportaDirectores';
    Format = VariableText;
    Direction = Import;
    TextEncoding = UTF8;
    UseRequestPage = false;
    TableSeparator = '<NewLine>';
    schema
    {
        textelement(Root)
        {
            tableelement(Directores; Directores)
            {
                XmlName = 'Director';
                fieldelement(Id; Directores.Id)
                {
                }
                fieldelement(Nombre; Directores.Nombre)
                {
                }
                fieldelement(FechaNaciemiento; Directores."Fecha Naciemiento")
                {
                }
                fieldelement(Edad; Directores.Edad)
                {
                }
                fieldelement(DocumentoBiografia; Directores."Documento Biografia")
                {
                }

                textelement(PDFBiografia)
                {
                    TextType = BigText;
                }
                textelement(fotoPerfil)
                {
                    TextType = BigText;
                }
                trigger OnBeforeInsertRecord()
                var
                begin
                    Directores.Biografia.CreateOutStream(outDirector);
                    PDFBiografia.Write(outDirector);
                    Directores.Biografia.CreateInStream(insDirector);
                    insDirector.Read(codeDirector);
                    Directores.Biografia.CreateOutStream(outDirector);
                    base64.FromBase64(codeDirector, outDirector);

                    Directores."Foto Director".CreateOutStream(outFoto);
                    fotoPerfil.Write(outFoto);
                    Directores."Foto Director".CreateInStream(insFoto);
                    insFoto.Read(codeFoto);
                    Directores."Foto Director".CreateOutStream(outFoto);
                    base64.FromBase64(codeFoto, outFoto);
                end;
            }
        }
    }
    var
        base64: Codeunit "Base64 Convert";

        insDirector: InStream;
        outDirector: OutStream;
        codeDirector: Text;

        insFoto: InStream;
        outFoto: OutStream;
        codeFoto: Text;
}
