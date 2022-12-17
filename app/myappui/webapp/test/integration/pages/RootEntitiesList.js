sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.my.myappui',
            componentId: 'RootEntitiesList',
            entitySet: 'RootEntities'
        },
        CustomPageDefinitions
    );
});