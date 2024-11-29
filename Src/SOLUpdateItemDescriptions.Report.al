report 50102 "SOL UpdateItemDescriptions"
{
    ApplicationArea = All;
    Caption = 'UpdateItemDescriptions';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;

    dataset
    {


        dataitem(Item; Item)
        {


            trigger OnAfterGetRecord()
            begin
                "Description 2" := CopyStr(Description + "No.", 1, MaxStrLen("Description 2"));
                Item.Modify();
            end;
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }
    }
    trigger OnPostReport()
    begin
        Message('Report has been run and %1 items were updated.', Item.COUNT);
    end;
}
