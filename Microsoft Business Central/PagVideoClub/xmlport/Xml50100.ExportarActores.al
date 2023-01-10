xmlport 50101 ExportarActores
{
    Caption = 'ExportarActores';
    Format = VariableText;
    Direction = Export;
    TextEncoding = UTF8;

    UseRequestPage = false;
    TableSeparator = '';

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
                textelement(intemBiografia)
                {
                    trigger OnBeforePassVariable()
                    var


                    begin
                        intemBiografia := textoBiografia;
                    end;
                }

                textelement(fotoPerfil)
                {
                    trigger OnBeforePassVariable()
                    var
                        myInt: Integer;
                    begin
                        fotoPerfil := codeFoto;
                    end;
                }

                trigger OnAfterGetRecord()
                begin

                end;
            }
        }

    }
    var
        importarCode: Codeunit CodeVideoClub;
        textoBiografia: Text;
        textoIns: InStream;
        textoMedio: Text;
        base64: Codeunit "Base64 Convert";

        codeFoto: Text;
        codeIns: InStream;


}
