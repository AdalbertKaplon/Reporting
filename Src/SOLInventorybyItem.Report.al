report 50100 "SOL Inventory by Item"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'SOL Inventory by Item';
    RDLCLayout = './src/SOL Inventory by Item.rdlc';
    WordLayout = './src/SOL Inventory by Item.docx';
    DefaultLayout = Word;
    dataset
    {

        dataitem(DataItemName; Item)
        {
            column(ItemNo_; "No.")
            {

            }
            column(ItemDescription; Description)
            {

            }
            column(Inventory; Inventory)
            {

            }
        
            
            dataitem(ItemLedgerEntryDataItem; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = field("No.");

                column(ItemLedgerEntryQuantity; Quantity)
                {

                }

            }
        }
    }


    // requestpage
    // {
    //     AboutTitle = 'Teaching tip title';
    //     AboutText = 'Teaching tip content';
    //     layout
    //     {
    //         area(Content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(LayoutName)
    //             {

    //             }
    //         }
    //     }
    // }



    var
        myInt: Integer;
}