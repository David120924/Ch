pageextension 71146617 SqzCLCompanyInformationExt extends "Company Information"
{
    layout
    {
        addafter("System Indicator")
        {
            group("Comany Localization")
            {
                Caption = 'Company Localization';

                field("SQZLocalization"; Rec.SQZLocalization)
                {
                    ApplicationArea = Basic, "Basic Sqz_CL";
                    Caption = 'Company Localization';
                    ToolTip = 'Specifies how you want to use the Company when you are working with tax and Invoices';
                    NotBlank = true;
                    ShowMandatory = true;
                    
                    ShowCaption = true;
                }
                group("Comany Information by Localization")
                {
                    Caption = 'Company Information by Localization';
                    Visible = ShowField;
                    field("SqzCLIdentificationType"; Rec.SqzCLIdentificationType)
                    {
                        ApplicationArea = Basic, "Basic Sqz_CL";
                        NotBlank = true;
                        ShowMandatory = true;
                        ShowCaption = true;
                    }
                    field("RUT_NIT"; Rec.SQZRUT_NIT)
                    {
                        ApplicationArea = Basic, "Basic Sqz_CL";
                        NotBlank = true;
                        ShowMandatory = true;
                        ShowCaption = true;
                    }
                    field("StartDateActivities"; Rec.SQZStartDateActivities)
                    {
                        ApplicationArea = Basic, "Basic Sqz_CL";
                    }
                }
            }
        }
    }

    actions
    {

    }

    var
        myInt: Integer;
        ShowField: Boolean;

        CLUpdateShowField: Codeunit Sqz_UpdateShowField;
        EnableExampleExtension : Codeunit "Sqz Enabled Basic Extension";

    trigger OnOpenPage();
    begin
        ShowField := CLUpdateShowField.SqzCLShowField();
        if EnableExampleExtension.IsExampleApplicationAreaEnabled() then
            Message('App published: Example Extension');
    end;
}
