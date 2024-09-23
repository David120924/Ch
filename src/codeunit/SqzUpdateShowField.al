codeunit 71146587 Sqz_UpdateShowField
{
    procedure SqzCLShowField(): Boolean
    var
        CompanyInformation: Record "Company Information";
    begin
        if CompanyInformation.Get() then begin
            if CompanyInformation.SQZLocalization = CompanyInformation.SQZLocalization::CH then
                exit(true)
            else
                exit(false);
        end;
        exit(false);
    end;
}
