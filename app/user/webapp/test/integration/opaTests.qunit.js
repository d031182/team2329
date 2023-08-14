sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/user/test/integration/FirstJourney',
		'ns/user/test/integration/pages/UserList',
		'ns/user/test/integration/pages/UserObjectPage',
		'ns/user/test/integration/pages/MembersObjectPage'
    ],
    function(JourneyRunner, opaJourney, UserList, UserObjectPage, MembersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/user') + '/index.html'
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