tableextension 71146595 SqzCLNoSeriesExt extends "No. Series"
{
    fields
    {
        field(79000; SqzCLDocTypeNumId; Enum SqzCLDocTypeNumId)
        {
            Caption = 'Fiscal Document Type';
            DataClassification = ToBeClassified;
        }
        field(79001; SQZICLIsElectronic; Boolean)
        {
            Caption = 'Electronic Document';
            DataClassification = ToBeClassified;
        }
        field(79002; SqzCLIdentificationType; Enum SqzCLIdentificationType)
        {
            Caption = 'Legal document type';
            DataClassification = ToBeClassified;
        }
    }
}
