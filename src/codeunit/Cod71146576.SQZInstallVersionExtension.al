codeunit 71146641 "SQZ Install Version Extension"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        EnableApplicationArea: Codeunit "Sqz Enabled Basic Extension";
    begin
        if (EnableApplicationArea.IsExampleApplicationAreaEnabled()) then
            exit;

        EnableApplicationArea.EnableExampleExtension();

        // Add your code here
    end;
}
