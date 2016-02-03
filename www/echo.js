/*global cordova, module*/

module.exports = {
    greet: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "callbackfunction", "scheduledTimer", [name]);
    }
};
