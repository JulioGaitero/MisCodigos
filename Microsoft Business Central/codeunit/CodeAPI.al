codeunit 50104 CodeAPI
{
    trigger OnRun()
    begin

    end;

    procedure LlamadaAPI()
    begin
        apiURL := 'http://httpbin.org/get';
        apiCliente.Get(apiURL, apiRespuesta);

        if not apiRespuesta.IsSuccessStatusCode() then begin
            ;
            Error('El WS ha devuelto el siguiente error:\');
        end
        else
            apiRespuesta.Content().ReadAs(apiRespuestaTexto);
        Message(apiRespuestaTexto);
    end;

    var
        apiCliente: HttpClient;
        apiRespuesta: HttpResponseMessage;
        apiURL: Text;
        apiRespuestaTexto: Text;



}
