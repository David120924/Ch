pageextension 71146621 SqzCLNoSeriesExt extends "No. Series"
{
layout
    {
        addafter("AllowGapsCtrl")
        {
            field("SQZICLIsElectronic"; Rec."SQZICLIsElectronic")
            {
                Caption = 'Electronic';
                ApplicationArea = Suite;
                Editable = true;
                Visible = ShowField;
            }
            field("SqzCLDocTypeNumId"; Rec."SqzCLDocTypeNumId")
            {
                Caption = 'Fiscal Document Type';
                ApplicationArea = Suite;
                Editable = true;
                NotBlank = true;
                ShowMandatory = true;
                Visible = ShowField;
            }
            field("SqzCLIdentificationType"; Rec."SqzCLIdentificationType")
            {
                Caption = 'Legal document type';
                ApplicationArea = Suite;
                Editable = true;
                NotBlank = true;
                ShowMandatory = true;
                Visible = ShowField;
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
