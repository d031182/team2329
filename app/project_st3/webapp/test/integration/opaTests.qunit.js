sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/projectst3/test/integration/FirstJourney',
		'ns/projectst3/test/integration/pages/UserList',
		'ns/projectst3/test/integration/pages/UserObjectPage',
		'ns/projectst3/test/integration/pages/MembersObjectPage'
    ],
    function(JourneyRunner, opaJourney, UserList, UserObjectPage, MembersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/projectst3') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheUserList: UserList,
					onTheUserObjectPage: UserObjectPage,
					onTheMembersObjectPage: MembersObjectPage
                }
            },
            opaJourney.run
        );
    }
);