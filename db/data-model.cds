namespace Sales.db;

using {managed} from '@sap/cds/common';

context transactions {

    entity SalesHeader : managed {
        key soNumber        : String(10)
            @mandatory
            @title: 'Sales Order Number';
            orderDate       : Date
            @title: 'Order Date';
            customerName    : String(50)
            @title: 'Customer Name';
            customerNumber  : String(10)
            @title: 'Customer Number';
            PoNumber        : String
            @title: 'PO Number';
            inquiryNumber   : String(10)
            @title: 'Inquiry Number';
            totalOrderItems : Integer
            @title: 'Total Sales Order';
            Items : Composition of many SalesItem on Items.soNumber = soNumber
    }

    entity SalesItem : managed {
        key soNumber      : String(10)
            @mandatory
            @title: 'Sales Order Number';
        key soItem        : String(10)
            @mandatory
            @title: 'Sales Item';

            OrderQuantity : Int16
            @title: 'Order Quantity';

            SalesUnit     : String(2)
            @title: 'Sales Unit';

            Material      : String(20)
            @title: 'Material';

            MatDesc       : String(40)
            @title: 'MAterial Description';

    }


}
