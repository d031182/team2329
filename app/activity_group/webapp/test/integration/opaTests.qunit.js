sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/activitygroup/test/integration/FirstJourney',
		'ns/activitygroup/test/integration/pages/ActivityGroupList',
		'ns/activitygroup/test/integration/pages/ActivityGroupObjectPage',
		'ns/activitygroup/test/integration/pages/MembersObjectPage'
    ],
    function(JourneyRunner, opaJourney, ActivityGroupList, ActivityGroupObjectPage, MembersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/activitygroup') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheActivityGroupList: ActivityGroupList,
					onTheActivityGroupObjectPage: ActivityGroupObjectPage,
					onTheMembersObjectPage: MembersObjectPage
                }
            },
            opaJourney.run
        );
    }
);