tableextension 71146594 SqzVATPostingSetupExt extends "VAT Posting Setup"
{
    fields
    {
        field(600; "SqzPurchaseReverseChrgVATAcc."; Code[20])
        {
            Caption = 'Purchase Reverse Chrg. VAT Acc.';
            TableRelation = "G/L Account";
            Description = 'Specifies the ledger account that you want to use to record the purchase return transactions';

            trigger OnValidate()
            begin
                TestNotSalesTax(FieldCaption("SqzPurchaseReverseChrgVATAcc."));

                CheckGLAcc("SqzPurchaseReverseChrgVATAcc.");
            end;
        }
        field(601; "SqzTaxAccountPurchase"; Code[20])
        {
            Caption = 'Tax Account Purchase';
            TableRelation = "G/L Account";
            Description = 'Specifies the ledger account that you want to use to record the tax calculated on Purchase Return transactions.';

            trigger OnValidate()
            begin
                TestNotSalesTax(FieldCaption("SqzTaxAccountPurchase"));

                CheckGLAcc("SqzTaxAccountPurchase");
            end;
        }
        field(602; "SqzBalanceAccount"; Code[20])
        {
            Caption = 'Balance Account';
            TableRelation = "G/L Account";
            Description = 'Specifies the ledger account that you want to use to record the balance.';

            trigger OnValidate()
            begin
                TestNotSalesTax(FieldCaption("SqzBalanceAccount"));

                CheckGLAcc("SqzBalanceAccount");
            end;
        }
    }
}
