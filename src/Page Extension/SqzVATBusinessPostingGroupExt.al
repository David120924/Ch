pageextension 71146619 SqzVATBusinessPostingGroupExt extends "VAT Business Posting Groups"
{
    layout
    {
        addafter("Description")
        {
            field("SqzFees"; Rec.SqzFees)
            {
                ApplicationArea = Basic, "Basic Sqz_CL";
                ToolTip = 'Tax Area Code by Company';
                Description = 'Specifies whether the Tax Area will be considered as Fee. ';
                Caption = 'Is Fee';
                ShowCaption = true;
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