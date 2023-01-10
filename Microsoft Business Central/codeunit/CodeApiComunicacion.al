codeunit 50105 CodeApiComunicacion
{

    trigger OnRun()
    begin

    end;

    procedure convertirClave(Clave: Text[60]): Text
    begin

        claveConvertida := base64.ToBase64('Admin:' + Clave);
        exit(claveConvertida);
    end;

    procedure LlamadaAPIUsuarios()
    begin
        convertirClave('nDs/FWJy5X6BNGZsg7xDjHZgYaoo+JhnEDFIwApLKMM=');
        apiURL := 'http://bc15test:7048/BC/api/publisherName/apiGroup/v1.0/companies(6c9fc3ae-27f4-4c12-a2a2-9cfaa4da54ac)/entitySetName';
        apiCliente.DefaultRequestHeaders.Add('Authorization', 'Basic ' + claveConvertida);
        apiCliente.Get(apiURL, apiRespuesta);
        if not apiRespuesta.IsSuccessStatusCode() then begin
            ;
            Error('El WS ha devuelto el siguiente error:\');
        end
        else
            apiRespuesta.Content().ReadAs(apiRespuestaTexto);

        jObject.ReadFrom(apiRespuestaTexto);
        jObject.Get('value', jToken);
        jArray := jToken.AsArray();

        for i := 0 to jArray.Count - 1 do begin
            Clear(importaApi);
            jArray.Get(i, jToken);
            jObject2 := jToken.AsObject();
            jObject2.Get('numeroEmpleado', jToken2);
            jInteger := jToken2.AsValue.AsInteger;
            if importaApi.Get(jInteger) then begin
                importaApi."Numero Empleado" := jInteger;
                jObject2.Get('nombreEmpleado', jToken2);
                jTexto := jToken2.AsValue.AsText;
                importaApi."Nombre Empleado" := jTexto;
                jObject2.Get('Sueldo', jToken2);
                jDecimal := jToken2.AsValue.AsDecimal();
                importaApi.Sueldo := jDecimal;
                jObject2.Get('IRPF', jToken2);
                jInteger := jToken2.AsValue.AsInteger;
                importaApi.IRPF := jInteger;
                jObject2.Get('sueldoFinal', jToken2);
                jDecimal := jToken2.AsValue.AsDecimal();
                importaApi.Sueldo := jDecimal;
                importaApi.modify();
            end
            else begin
                importaApi.Init();
                importaApi."Numero Empleado" := jInteger;
                jObject2.Get('nombreEmpleado', jToken2);
                jTexto := jToken2.AsValue.AsText;
                importaApi."Nombre Empleado" := jTexto;
                jObject2.Get('Sueldo', jToken2);
                jDecimal := jToken2.AsValue.AsDecimal();
                importaApi.Sueldo := jDecimal;
                jObject2.Get('IRPF', jToken2);
                jInteger := jToken2.AsValue.AsInteger;
                importaApi.IRPF := jInteger;
                jObject2.Get('sueldoFinal', jToken2);
                jDecimal := jToken2.AsValue.AsDecimal();
                importaApi.Sueldo := jDecimal;
                importaApi.insert();
            end;
        end;
    end;


    var
        apiCliente: HttpClient;
        apiRespuesta: HttpResponseMessage;
        apiURL: Text;
        apiRespuestaTexto: Text;
        claveConvertida: Text;
        base64: Codeunit "Base64 Convert";
        apiHeader: HttpHeaders;
        Clave: Text;
        i: Integer;
        jArray: JsonArray;
        jToken: JsonToken;
        jToken2: JsonToken;
        jObject: JsonObject;
        jValue: JsonValue;
        jObject2: JsonObject;
        jInteger: Integer;
        jTexto: Text;
        jDecimal: Decimal;
        importaApi: Record TabImportaApi;
}