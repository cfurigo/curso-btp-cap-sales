const cds = require('@sap/cds');
/**
* Implementacao do servico definido em /service.cds
*/
module.exports = cds.service.impl(async function() {

	const sales = await cds.connect.to('API_SALES_ORDER_SRV');

	this.on('READ', 'Sales', async req => {
		return sales.run(req.query);
		//return await sales.delegateODataRequests(req,"API_SALES_ORDER_SRV");
	});
});
