pageextension 71146618 SqzCLGeneralLedgerSetupExt extends "General Ledger Setup"
{
    layout
    {
        addafter("App. Dimension Posting")
        {
            group("Comany Localization")
            {
                Caption = 'Comany Localization EI';
                Visible = ShowField;
                field("Tax Area / Business"; Rec."SqzCLTaxArea_Business")
                {
                    ApplicationArea = Basic, "Basic Sqz_CL";
                    ToolTip = 'Tax Area Code by Company';
                    Description = 'The Tax Area Code is configured to identify what type of tax is used to calculate and post the taxes, these apply to customer or supplier';
                    Caption = 'Tax Area / Business';
                    NotBlank = true;
                    ShowMandatory = true;
                    
                    ShowCaption = true;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
        ShowField: Boolean;
        CLUpdateShowField: Codeunit Sqz_UpdateShowField;

    trigger OnOpenPage();
    begin
        ShowField := CLUpdateShowField.SqzCLShowField();
    end;
}