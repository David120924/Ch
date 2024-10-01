pageextension 71146620 SqzVATPostingSetupExt extends "VAT Posting Setup"
{
    layout
    {
        addafter("Tax Category")
        {
            field("SqzPurchaseReverseChrgVATAcc."; Rec."SqzPurchaseReverseChrgVATAcc.")
            {
                ApplicationArea = Basic, "Basic Sqz_CL";
                ToolTip = 'Purchase Reverse Chrg VAT Acc.';
                Caption = 'Purchase Reverse Chrg VAT Acc';
                ShowCaption = true;
                Visible = ShowField;
            }
            field(SqzTaxAccountPurchase; Rec.SqzTaxAccountPurchase)
            {
                ApplicationArea = Basic, "Basic Sqz_CL";
                ToolTip = 'Tax Account Purchase.';
                Caption = 'Tax Account Purchase';
                ShowCaption = true;
                
                Visible = ShowField;
            }
            field(SqzBalanceAccount; Rec.SqzBalanceAccount)
            {
                ApplicationArea = Basic, "Basic Sqz_CL";
                ToolTip = 'Balance Account.';
                Caption = 'Balance Account';
                ShowCaption = true;
                Visible = ShowField;
            }
        }
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