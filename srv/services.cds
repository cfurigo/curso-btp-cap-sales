using { sales as so } from '../db/schemas';

service SalesService @(path: '/sales'){
    @readonly
    @cds.persistence:{table,skip:false}
    entity Sales as projection on so.Sales;
}