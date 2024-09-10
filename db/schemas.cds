namespace sales;

using { API_SALES_ORDER_SRV as external } from '../srv/external/API_SALES_ORDER_SRV';

entity Sales as projection on external.A_SalesOrder {
    SalesOrder as NumberSO,
    SalesOffice,
    SalesGroup,
    SalesOrganization
}