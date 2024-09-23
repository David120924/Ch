tableextension 71146591 SqzCLCompanyInformationExt extends "Company Information"
{
    //add information for Localization chile
    fields
    {
        field(79000; SQZLocalization; Enum SQZLocalization)
        {
            Caption = 'Localization';
            DataClassification = ToBeClassified;
        }
        field(79001; SqzCLIdentificationType; Enum SqzCLIdentificationType)
        {
            Caption = 'Identification Type';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                TestNotValue(FieldCaption("SqzCLIdentificationType"));
            end;
        }
        field(79002; SQZRUT_NIT; Text[12])
        {
            Caption = 'RUT/NIT';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                SqzCLValidateRUT: Codeunit "SqzCLValidateRUT";
            begin
                if SqzCLIdentificationType = SqzCLIdentificationType::"R.U.T." then
                    if SQZRUT_NIT <> '' then begin
                        SQZRUT_NIT := SqzCLValidateRUT.ValidarEInsertarRUT(SQZRUT_NIT);
                    end else begin
                    TestNotValue(FieldCaption("SQZRUT_NIT"));
                    end;
                    if StrLen(SQZRUT_NIT)<9 then begin
                        TestNotValue(FieldCaption("SQZRUT_NIT"));
                    end;
            end;
        }

        field(79003; SQZStartDateActivities; Date)
        {
            Caption = 'Start Date Activities';
            DataClassification = ToBeClassified;
        }
    }
    var

        Text000: Label '%1 must be entered on the tax jurisdiction line when %2 is %3.';
    procedure TestNotValue(FromFieldName: Text[100])
    begin
        if "SQZLocalization" <> "SQZLocalization"::CH then
            Error(
              Text000,
              FromFieldName, FieldCaption("SQZLocalization"),
              "SQZLocalization");
    end;
}
