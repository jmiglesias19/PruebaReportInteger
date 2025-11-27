report 50100 ReportPrueba
//ejemplo factura venta
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = 'src/report/layout/FacturaVentaPrueba.rdl';

    Permissions = tabledata "Sales Invoice Header" = r;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            column(No_; "No.") { }
            column(Sell_to_CustomerName; "Sell-to Customer Name") { }
            column(Sell_to_Address; "Sell-to Address") { }
            column(Sell_to_City; "Sell-to City") { }
            column(Sell_to_Post_Code; "Sell-to Post Code") { }
            column(Sell_to_County; "Sell-to County") { }

            column(Name; CompanyInformation.Name) { }
        }


        dataitem("Integer"; Integer)
        {

        }
    }

    labels
    {
        TitleLbl = 'Invoice';
    }

    var
        CompanyInformation: Record "Company Information";
}