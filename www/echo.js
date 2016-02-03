/**
 *  echo.js
 *
 *  Created by Vignesh on 2/2/16.
 *  Copyright © 2016 Vignesh Uvi. All rights reserved.
 *
 */

// global cordova, module
module.exports = {
    threadFunction: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Echo", "threadFunction", [name]);
    },

    nonThreadFunction: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Echo", "nonThreadFunction", [name]);
    }
};
