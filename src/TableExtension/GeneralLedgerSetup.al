tableextension 71146592 SqzCLGeneralLedgerSetupExt extends "General Ledger Setup"
{
    fields
    {
        field(71146575; SqzCLTaxArea_Business; Code[20])
        {
            Caption = 'SqzCLTaxArea_Business';
            DataClassification = ToBeClassified;
            NotBlank = true;
            InitValue = ' ';
            Description = 'The Tax Area Code is configured to identify what type of tax is used to calculate and post the taxes, these apply to customer or supplier';
            TableRelation = "VAT Business Posting Group".Code;
        }
    }
}