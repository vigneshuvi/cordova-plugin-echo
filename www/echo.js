/*global cordova, module*/

module.exports = {
    threadFunction: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "callbackfunction", "threadFunction", [name]);
    },

    nonThreadFunction: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "callbackfunction", "nonThreadFunction", [name]);
    }
};
