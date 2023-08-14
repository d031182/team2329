sap.ui.define([
    "sap/m/MessageToast"
], function (MessageToast) {
    'use strict';

    return {
        createActivityGroup: function (oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
