sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/ActivityList',
		'project1/test/integration/pages/ActivityObjectPage'
    ],
    function(JourneyRunner, opaJourney, ActivityList, ActivityObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
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