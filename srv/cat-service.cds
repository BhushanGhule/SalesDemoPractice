using { Sales.db as SalesOrder } from '../db/data-model';

@path: 'sap/opu/odata/sap/salesorder'
service CatlogService {

    entity SalesHeaderSet as projection on SalesOrder.transactions.SalesHeader;
    entity SalesItemSet as projection on SalesOrder.transactions.SalesItem;
}