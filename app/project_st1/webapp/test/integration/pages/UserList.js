sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'funorg.projectst1',
            componentId: 'UserList',
            entitySet: 'User'
        },
        CustomPageDefinitions
    );
});