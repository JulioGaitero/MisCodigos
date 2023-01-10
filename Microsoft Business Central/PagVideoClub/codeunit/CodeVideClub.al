codeunit 50100 CodeVideoClub
{
    trigger OnRun()
    begin

    end;

    procedure subirPDF(userID: Code[2]; Nombre: Text; Apellidos: Text)
    var
        OutStr: OutStream;
        tablaActores: Record Actores;
        InStr: InStream;
        ficheroTemporal: Text;
    begin

        UploadIntoStream('', '', '', ficheroTemporal, InStr);
        if not (ficheroTemporal = '') then begin
            Clear(tablaActores);
            tablaActores.Get(userID);
            tablaActores.Biografia.CreateOutStream(OutStr);
            ficheroTemporal := Nombre + Apellidos + '.pdf';
            tablaActores."Documento Biografia" := ficheroTemporal;
            CopyStream(OutStr, InStr);
            tablaActores.Modify();
        end;
    end;

    procedure
      bajarPDF(userID: Code[2]; Nombre: Text; Apellidos: Text)
    var
        tablaActores: Record Actores;
        InStr: InStream;
        ficheroTemporal: text;
        Error: Label 'Fichero no encontrado';
    begin
        if tablaActores.FindFirst() then
            Clear(tablaActores);
        tablaActores.Get(userID);
        if tablaActores.Biografia.HasValue then begin
            tablaActores.CalcFields(Biografia);
            tablaActores.Biografia.CreateInStream(InStr);
            ficheroTemporal := Nombre + Apellidos + '.pdf';
            DownloadFromStream(InStr, 'Export', '', '', ficheroTemporal);
        end
        else
            Error('No hay PDF disponible.');
    end;

    // PDF Directores

    procedure subirPDFDirectores(userID: Integer; Nombre: Text; Apellidos: Text)
    var
        OutStr: OutStream;
        tablaDirectores: Record Directores;
        InStr: InStream;
        ficheroTemporal: Text;
    begin

        UploadIntoStream('', '', '', ficheroTemporal, InStr);
        if not (ficheroTemporal = '') then begin
            Clear(tablaDirectores);
            tablaDirectores.Get(userID);
            tablaDirectores.Biografia.CreateOutStream(OutStr);
            ficheroTemporal := Nombre + Apellidos + '.pdf';
            tablaDirectores."Documento Biografia" := ficheroTemporal;
            CopyStream(OutStr, InStr);
            tablaDirectores.Modify();
        end;
    end;

    procedure bajarPDFDirectores(userID: Integer; Nombre: Text; Apellidos: Text)
    var
        tablaDirectores: Record Directores;
        InStr: InStream;
        ficheroTemporal: text;
        Error: Label 'Fichero no encontrado';
    begin
        if tablaDirectores.FindFirst() then
            Clear(tablaDirectores);
        tablaDirectores.Get(userID);
        if tablaDirectores.Biografia.HasValue then begin
            tablaDirectores.CalcFields(Biografia);
            tablaDirectores.Biografia.CreateInStream(InStr);
            ficheroTemporal := Nombre + Apellidos + '.pdf';
            DownloadFromStream(InStr, 'Export', '', '', ficheroTemporal);

        end
        else
            Error('No hay PDF disponible.');
    end;

    //PDF Peliculas

    procedure subirPDFPeliculas(peliID: Integer; Nombre: Text)
    var
        OutStr: OutStream;
        tablaPeliculas: Record Pelicula;
        InStr: InStream;
        ficheroTemporal: Text;
    begin

        UploadIntoStream('', '', '', ficheroTemporal, InStr);
        if not (ficheroTemporal = '') then begin
            Clear(tablaPeliculas);
            tablaPeliculas.Get(peliID);
            tablaPeliculas.Biografia.CreateOutStream(OutStr);
            ficheroTemporal := Nombre + '.pdf';
            tablaPeliculas."Documento Biografia" := ficheroTemporal;
            CopyStream(OutStr, InStr);
            tablaPeliculas.Modify();
        end;
    end;

    procedure bajarPDFPeliculas(peliID: Integer; Nombre: Text)
    var
        tablaPeliculas: Record Pelicula;
        InStr: InStream;
        ficheroTemporal: text;
        Error: Label 'Fichero no encontrado';
    begin
        if tablaPeliculas.FindFirst() then
            Clear(tablaPeliculas);
        tablaPeliculas.Get(peliID);
        if tablaPeliculas.Biografia.HasValue then begin
            tablaPeliculas.CalcFields(Biografia);
            tablaPeliculas.Biografia.CreateInStream(InStr);
            ficheroTemporal := Nombre + '.pdf';
            DownloadFromStream(InStr, 'Export', '', '', ficheroTemporal);
        end
        else
            Error('No hay PDF disponible.');
    end;

    procedure DateToXMLText(Date: Date) XMLText: Text[30]
    begin
        XMLText := Format(Date, 10, '<Year4>-<Month,2>-<Day,2>');
    end;

    procedure XMLTextToDate(XMLText: Text[30]) Date: Date
    var
        Month: Integer;
        Day: Integer;
        Year: Integer;
    begin
        Evaluate(Year, CopyStr(XMLText, 1, 4));
        Evaluate(Month, CopyStr(XMLText, 6, 2));
        Evaluate(Day, CopyStr(XMLText, 9, 2));
        Date := DMY2Date(Day, Month, Year);
    end;

    procedure exportaXML(tabla: Text; tablaVerdad: Variant);

    var
        textoBiografia: Text;
        textoIns: InStream;
        textoMedio: Text;
        base64: Codeunit "Base64 Convert";
        Actores: Record Actores;
        Directores: Record Directores;
        Pelicula: Record Pelicula;
        codeFoto: Text;
        codeIns: InStream;


    begin

        if tabla = 'actores' then begin



            Actores.SetAutoCalcFields(Biografia);
            Actores.Biografia.CreateInStream(textoIns);
            textoBiografia := base64.ToBase64(textoIns);

            Actores.CalcFields("Foto Actor");
            Actores."Foto Actor".CreateInStream(codeIns);
            codeFoto := base64.ToBase64(codeIns);

        end;
        if tabla = 'directores' then begin

            Directores := tablaVerdad;
            Directores.SetAutoCalcFields(Biografia);
            Directores.Biografia.CreateInStream(codeIns);
            codeFoto := base64.ToBase64(codeIns);

            Directores.SetAutoCalcFields("Foto Director");
            Directores."Foto Director".CreateInStream(codeIns);
            codeFoto := base64.ToBase64(codeIns);

        end
        else begin

            Pelicula.CalcFields(Biografia);
            Pelicula.Biografia.CreateInStream(codeIns);
            codeFoto := base64.ToBase64(codeIns);

            Pelicula.CalcFields("Foto Pelicula");
            Pelicula."Foto Pelicula".CreateInStream(codeIns);
            codeFoto := base64.ToBase64(codeIns);

        end;
    end;

    var


}

