xmlport 50102 ExportaDirectores
{
    Caption = 'ExportaDirectores';
    Format = VariableText;
    Direction = Export;
    TextEncoding = UTF8;
    UseRequestPage = false;
    TableSeparator = '';
    FieldSeparator = ',';

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
                    trigger OnBeforePassVariable()
                    begin
                        PDFBiografia := codePDF;
                    end;
                }

                textelement(fotoPerfil)
                {

                    trigger OnBeforePassVariable()

                    begin
                        fotoPerfil := codeFoto;
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    Directores.CalcFields(Biografia);
                    Directores.Biografia.CreateInStream(insPDF);
                    codePDF := base64.ToBase64(insPDF);

                    Directores.CalcFields("Foto Director");
                    Directores."Foto Director".CreateInStream(insFoto);
                    codeFoto := base64.ToBase64(insFoto);
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
}
