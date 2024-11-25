using {Sales.db as SalesOrder} from '../db/data-model';

@path: 'sap/opu/odata/sap/salesorder'
service CatlogService {
    @Capabilities       : {Deletable, Updatable,}
    @odata.draft.enabled: true
    entity SalesHeaderSet as projection on SalesOrder.transactions.SalesHeader;


    @Capabilities       : {Deletable, Updatable,}
    entity SalesItemSet   as projection on SalesOrder.transactions.SalesItem;
}
