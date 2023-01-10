table 50100 "Seminario Linea Comentario"
{
    Caption = 'Seminario Comment Line';


    fields
    {
        field(1; "Document Type"; Enum EnumLineaConetario)
        {
            Caption = 'Document Type';
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(7; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.", "Document Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    procedure SetUpNewLine()
    var
        SeminarioCommentLine: Record "Seminario Linea Comentario";
    begin
        SeminarioCommentLine.SetRange("Document Type", "Document Type");
        SeminarioCommentLine.SetRange("No.", "No.");
        SeminarioCommentLine.SetRange("Document Line No.", "Document Line No.");
        SeminarioCommentLine.SetRange(Date, WorkDate());
        if not SeminarioCommentLine.FindFirst() then
            Date := WorkDate();

        OnAfterSetUpNewLine(Rec, SeminarioCommentLine);
    end;

    procedure CopyComments(FromDocumentType: Integer; ToDocumentType: Integer; FromNumber: Code[20]; ToNumber: Code[20])
    var
        SeminarioCommentLine: Record "Seminario Linea Comentario";
        SeminarioCommentLine2: Record "Seminario Linea Comentario";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeCopyComments(SeminarioCommentLine, ToDocumentType, IsHandled, FromDocumentType, FromNumber, ToNumber);
        if IsHandled then
            exit;

        SeminarioCommentLine.SetRange("Document Type", FromDocumentType);
        SeminarioCommentLine.SetRange("No.", FromNumber);
        if SeminarioCommentLine.FindSet() then
            repeat
                SeminarioCommentLine2 := SeminarioCommentLine;
                SeminarioCommentLine2."Document Type" := EnumLineaConetario.FromInteger(ToDocumentType);
                SeminarioCommentLine2."No." := ToNumber;
                SeminarioCommentLine2.Insert();
            until SeminarioCommentLine.Next() = 0;
    end;

    procedure CopyLineComments(FromDocumentType: Integer; ToDocumentType: Integer; FromNumber: Code[20]; ToNumber: Code[20]; FromDocumentLineNo: Integer; ToDocumentLineNo: Integer)
    var
        SeminarioCommentLineSource: Record "Seminario Linea Comentario";
        SeminarioCommentLineTarget: Record "Seminario Linea Comentario";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeCopyLineComments(
          SeminarioCommentLineTarget, IsHandled, FromDocumentType, ToDocumentType, FromNumber, ToNumber, FromDocumentLineNo, ToDocumentLineNo);
        if IsHandled then
            exit;

        SeminarioCommentLineSource.SetRange("Document Type", FromDocumentType);
        SeminarioCommentLineSource.SetRange("No.", FromNumber);
        SeminarioCommentLineSource.SetRange("Document Line No.", FromDocumentLineNo);
        if SeminarioCommentLineSource.FindSet() then
            repeat
                SeminarioCommentLineTarget := SeminarioCommentLineSource;
                SeminarioCommentLineTarget."Document Type" := EnumLineaConetario.FromInteger(ToDocumentType);
                SeminarioCommentLineTarget."No." := ToNumber;
                SeminarioCommentLineTarget."Document Line No." := ToDocumentLineNo;
                SeminarioCommentLineTarget.Insert();
            until SeminarioCommentLineSource.Next() = 0;
    end;

    procedure CopyLineCommentsFromSeminarioLines(FromDocumentType: Integer; ToDocumentType: Integer; FromNumber: Code[20]; ToNumber: Code[20]; var TempSeminarioLineSource: Record "Seminario Linea Comentario" temporary)
    var
        SeminarioCommentLineSource: Record "Seminario Linea Comentario";
        SeminarioCommentLineTarget: Record "Seminario Linea Comentario";
        IsHandled: Boolean;
        NextLineNo: Integer;
    begin
        IsHandled := false;
        OnBeforeCopyLineCommentsFromSeminarioLines(
          SeminarioCommentLineTarget, IsHandled, FromDocumentType, ToDocumentType, FromNumber, ToNumber, TempSeminarioLineSource);
        if IsHandled then
            exit;

        SeminarioCommentLineTarget.SetRange("Document Type", ToDocumentType);
        SeminarioCommentLineTarget.SetRange("No.", ToNumber);
        SeminarioCommentLineTarget.SetRange("Document Line No.", 0);
        if SeminarioCommentLineTarget.FindLast() then;
        NextLineNo := SeminarioCommentLineTarget."Line No." + 10000;
        SeminarioCommentLineTarget.Reset();

        SeminarioCommentLineSource.SetRange("Document Type", FromDocumentType);
        SeminarioCommentLineSource.SetRange("No.", FromNumber);
        if TempSeminarioLineSource.FindSet() then
            repeat
                SeminarioCommentLineSource.SetRange("Document Line No.", TempSeminarioLineSource."Line No.");
                if SeminarioCommentLineSource.FindSet() then
                    repeat
                        SeminarioCommentLineTarget := SeminarioCommentLineSource;
                        SeminarioCommentLineTarget."Document Type" := EnumLineaConetario.FromInteger(ToDocumentType);
                        SeminarioCommentLineTarget."No." := ToNumber;
                        SeminarioCommentLineTarget."Document Line No." := 0;
                        SeminarioCommentLineTarget."Line No." := NextLineNo;
                        SeminarioCommentLineTarget.Insert();
                        NextLineNo += 10000;
                    until SeminarioCommentLineSource.Next() = 0;
            until TempSeminarioLineSource.Next() = 0;
    end;

    procedure CopyHeaderComments(FromDocumentType: Integer; ToDocumentType: Integer; FromNumber: Code[20]; ToNumber: Code[20])
    var
        SeminarioCommentLineSource: Record "Seminario Linea Comentario";
        SeminarioCommentLineTarget: Record "Seminario Linea Comentario";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeCopyHeaderComments(SeminarioCommentLineTarget, IsHandled, FromDocumentType, ToDocumentType, FromNumber, ToNumber);
        if IsHandled then
            exit;

        SeminarioCommentLineSource.SetRange("Document Type", FromDocumentType);
        SeminarioCommentLineSource.SetRange("No.", FromNumber);
        SeminarioCommentLineSource.SetRange("Document Line No.", 0);
        if SeminarioCommentLineSource.FindSet() then
            repeat
                SeminarioCommentLineTarget := SeminarioCommentLineSource;
                SeminarioCommentLineTarget."Document Type" := EnumLineaConetario.FromInteger(ToDocumentType);
                SeminarioCommentLineTarget."No." := ToNumber;
                SeminarioCommentLineTarget.Insert();
            until SeminarioCommentLineSource.Next() = 0;
    end;

    procedure DeleteComments(DocType: Option; DocNo: Code[20])
    begin
        SetRange("Document Type", DocType);
        SetRange("No.", DocNo);
        if not IsEmpty() then
            DeleteAll();
    end;

    procedure ShowComments(DocType: Option; DocNo: Code[20]; DocLineNo: Integer)
    var
        SeminarioCommentSheet: Page "Sales Comment Sheet";
    begin
        SetRange("Document Type", DocType);
        SetRange("No.", DocNo);
        SetRange("Document Line No.", DocLineNo);
        Clear(SeminarioCommentSheet);
        SeminarioCommentSheet.SetTableView(Rec);
        SeminarioCommentSheet.RunModal();
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterSetUpNewLine(var SeminarioCommentLineRec: Record "Seminario Linea Comentario"; var SeminarioCommentLineFilter: Record "Seminario Linea Comentario")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCopyComments(var SeminarioCommentLine: Record "Seminario Linea Comentario"; ToDocumentType: Integer; var IsHandled: Boolean; FromDocumentType: Integer; FromNumber: Code[20]; ToNumber: Code[20])
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCopyLineComments(var SeminarioCommentLine: Record "Seminario Linea Comentario"; var IsHandled: Boolean; FromDocumentType: Integer; ToDocumentType: Integer; FromNumber: Code[20]; ToNumber: Code[20]; FromDocumentLineNo: Integer; ToDocumentLine: Integer)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCopyLineCommentsFromSeminarioLines(var SeminarioCommentLine: Record "Seminario Linea Comentario"; var IsHandled: Boolean; FromDocumentType: Integer; ToDocumentType: Integer; FromNumber: Code[20]; ToNumber: Code[20]; var TempSeminarioLineSource: Record "Seminario Linea Comentario" temporary)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCopyHeaderComments(var SeminarioCommentLine: Record "Seminario Linea Comentario"; var IsHandled: Boolean; FromDocumentType: Integer; ToDocumentType: Integer; FromNumber: Code[20]; ToNumber: Code[20])
    begin
    end;
}

