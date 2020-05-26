pageextension 50100 "CSD Resource Card" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {
                ApplicationArea = All;
            }
        }
        addlast(content)
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowRoom;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {
                    ApplicationArea = All;
                }
            }
        }
        modify("Search Name")
        {
            Visible=false;
        }
    }

    var
        [InDataSet]
        ShowRoom: Boolean;

    trigger OnAfterGetRecord()
    begin
        ShowRoom := (Type = Type::Machine);
    end;
}