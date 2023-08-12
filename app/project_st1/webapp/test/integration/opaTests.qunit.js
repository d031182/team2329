sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'funorg/projectst1/test/integration/FirstJourney',
		'funorg/projectst1/test/integration/pages/UserList',
		'funorg/projectst1/test/integration/pages/UserObjectPage',
		'funorg/projectst1/test/integration/pages/MembersObjectPage'
    ],
    function(JourneyRunner, opaJourney, UserList, UserObjectPage, MembersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('funorg/projectst1') + '/index.html'
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