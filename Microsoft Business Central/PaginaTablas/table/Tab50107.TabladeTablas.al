table 50107 TabladeTablas
{
    Caption = 'TabladeTablas';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Tabla; Text[30])
        {
            Caption = 'Tabla';
            DataClassification = ToBeClassified;
            TableRelation = "AllObjWithCaption"."Object Name" where("Object Type" = filter('TableData'));
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                myInt: Integer;
            begin

            end;
        }

    }


    keys
    {
        key(PK; Tabla)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Tabla)
        {


        }
    }


}
