codeunit 50106 SubCode
{

    Permissions = TableData "Sales Invoice Header" = RIMD;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesDoc', '', true, true)]
    local procedure MyProcedure(var SalesHeader: Record "Sales Header")
    begin

        Clear(tablaCode);

        tablaCode.Init();
        tablaCode."Sell-to Customer Name" := SalesHeader."Sell-to Customer Name";
        tablaCode."Due Date" := SalesHeader."Due Date";
        tablaCode."Ship-to Contact" := SalesHeader."Ship-to Contact";
        tablaCode."Posting No." := SalesHeader."Posting No.";
        tablaCode."VAT Reporting Date" := SalesHeader."VAT Reporting Date";
        tablaCode."Posting Date" := SalesHeader."Posting Date";
        tablaCode.Status := SalesHeader.Status;
        tablaCode.Insert();

    end;

    trigger OnRun()
    var

    begin

    end;

    var

        tablaCode: Record SubCode;

}
