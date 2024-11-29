reportextension 50100 "SOL Sales Invoice" extends "Standard Sales - Invoice"
{
    RDLCLayout = './src/StandardSalesInvoice.rdlc';
    dataset
    {
        add(Header)
        {
            column(SOLHeaderSalesOrderNo; "Order No.")
            {
                IncludeCaption = true;
            }
        }
    }
    requestpage
    {
        layout
        {

            addlast(Options)
            {

                field(SOLHeaderSalesOrderNoVisible; SOLHeaderSalesOrderNoVisible)
                {
                    ApplicationArea = All;
                    Caption = 'Show Order No.';

                }

            }
        }

    }
    var
        SOLHeaderSalesOrderNoVisible: Boolean;
}
