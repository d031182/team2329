sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/activity/test/integration/FirstJourney',
		'ns/activity/test/integration/pages/ActivityList',
		'ns/activity/test/integration/pages/ActivityObjectPage'
    ],
    function(JourneyRunner, opaJourney, ActivityList, ActivityObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/activity') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheActivityList: ActivityList,
					onTheActivityObjectPage: ActivityObjectPage
                }
            },
            opaJourney.run
        );
    }
);