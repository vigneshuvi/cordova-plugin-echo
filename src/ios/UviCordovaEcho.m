//
//  UviCordovaEcho.m
//  UviCordovaEcho
//
//  Created by Vignesh on 2/2/16.
//  Copyright © 2016 Vignesh Uvi. All rights reserved.
//

#import "UviCordovaEcho.h"

@implementation UviCordovaEcho

/**
 * Plugin methods are executed on the UI thread.
 * If your plugin requires a non-trivial amount of processing or requires a blocking call,
 * you should make use of a background thread.
 */
- (void) threadFunction:(CDVInvokedUrlCommand*)command {

    [self.commandDelegate runInBackground:^{

        // Get the call back ID and echo argument
        NSString *callbackId = [command callbackId];
        NSString *echoArg = [[command arguments] objectAtIndex:0];
        CDVPluginResult* result = nil;
        
        // Check command.arguments here.
        if (echoArg != nil && [echoArg length] > 0) {
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:scheduleCallback];
        } else { 
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Echo Argument was null"];
        }
        
        [self.commandDelegate sendPluginResult:result callbackId:callbackId];
    }];
}

- (void) nonThreadFunction:(CDVInvokedUrlCommand*)command{

    // Get the call back ID and echo argument
    NSString *callbackId  = [command callbackId];
    NSString *echoArg = [[command arguments] objectAtIndex:0];
    CDVPluginResult* result = nil;

    // Check command.arguments here.
    if (echoArg != nil && [echoArg length] > 0) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:scheduleCallback];
    } else { 
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Echo Argument was null"];
    }
    
    [self.commandDelegate sendPluginResult:result callbackId:callbackId];
    
}

@end