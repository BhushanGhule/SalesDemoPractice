sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sales/sales/test/integration/FirstJourney',
		'sales/sales/test/integration/pages/SalesHeaderSetList',
		'sales/sales/test/integration/pages/SalesHeaderSetObjectPage',
		'sales/sales/test/integration/pages/SalesItemSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesHeaderSetList, SalesHeaderSetObjectPage, SalesItemSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sales/sales') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesHeaderSetList: SalesHeaderSetList,
					onTheSalesHeaderSetObjectPage: SalesHeaderSetObjectPage,
					onTheSalesItemSetObjectPage: SalesItemSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);