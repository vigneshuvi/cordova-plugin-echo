package com.example.plugin;

import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

public class Echo extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {

        if (action.equals("threadFunction")) {
            // Get the echo argument
            String echoArg = data.getString(0);
            this.echo(echoArg, callbackContext);
            return true;

        } else if (action.equals("nonThreadFunction")) { //

           cordova.getThreadPool().execute(new Runnable() {
            
                public void run() {  // Thread-safe.
                    // Get the echo argument
                    String echoArg = data.getString(0);
                    this.echo(echoArg, callbackContext);
                }

            });
            return true;

        } else {
            
            return false;

        }
    }

    // Validate the message and send callback accordingly.
    private void echo(String message, CallbackContext callbackContext) {
        if (message != null && message.length() > 0) { 
            callbackContext.success(message);
        } else {
            callbackContext.error("Echo Argument was null");
        }
    }
}
