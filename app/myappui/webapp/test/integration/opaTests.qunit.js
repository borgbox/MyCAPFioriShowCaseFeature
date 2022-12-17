sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/my/myappui/test/integration/FirstJourney',
		'com/my/myappui/test/integration/pages/RootEntitiesList',
		'com/my/myappui/test/integration/pages/RootEntitiesObjectPage',
		'com/my/myappui/test/integration/pages/ChildEntities1ObjectPage'
    ],
    function(JourneyRunner, opaJourney, RootEntitiesList, RootEntitiesObjectPage, ChildEntities1ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/my/myappui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRootEntitiesList: RootEntitiesList,
					onTheRootEntitiesObjectPage: RootEntitiesObjectPage,
					onTheChildEntities1ObjectPage: ChildEntities1ObjectPage
                }
            },
            opaJourney.run
        );
    }
);