report 50101 "Inv. and Avyb. by Item Cat."
{
    ApplicationArea = All;
    Caption = 'Inv. and Avyb. by Item Cat.';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = './src/InvAndAvybByItemCat.rdlc';
    ExcelLayout = './src/InvAndAvybByItemCat.xlsx';
    DefaultLayout = Excel;
    dataset
    {

        dataitem(Item; Item)
        {
            column(ItemNo_; "No.")
            {
                IncludeCaption = true;
            }
            column(ItemDescription; Description)
            {
                IncludeCaption = true;
            }
            column(Inventory; Inventory)
            {
                IncludeCaption = true;
            }
            column(Available; Available)
            {

            }
            column(Item_Category_Code; "Item Category Code")
            {
                IncludeCaption = true;
            }
            column(item_Category_Name; itemcategoryname)
            {

            }
            trigger OnAfterGetRecord()
            var

                ItemCategory: Record "Item Category";
            begin
                CurrReport.Language := LanguageManagement.GetLanguageIdOrDefault('');

                Available := Inventory - "Qty. on Sales Order" + "Qty. on Purch. Order";
                IF ItemCategory.Get(Item."Item Category Code")
                THEN
                    itemcategoryname := ItemCategory.Description;

            end;
        }

    }
    var
        Available: Integer;
        itemcategoryname: Text[50];
        LanguageManagement: Codeunit Language;
        ItemCategoryNameLbl: Label 'Item Category Name';
        AvailableLbl: Label 'Available';
}
