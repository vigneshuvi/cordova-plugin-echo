#import "UviCordovaEcho.h"

@implementation UviCordovaEcho

/**
 * Plugin methods are executed on the UI thread.
 * If your plugin requires a non-trivial amount of processing or requires a blocking call,
 * you should make use of a background thread.
 */
- (void) threadFunction:(CDVInvokedUrlCommand*)command {
    // Check command.arguments here.
    [self.commandDelegate runInBackground:^{
        NSString *callbackId = [command callbackId];
        NSString *scheduleCallback = [[command arguments] objectAtIndex:0];
        CDVPluginResult* result = [CDVPluginResult
                                   resultWithStatus:CDVCommandStatus_OK
                                   messageAsString:scheduleCallback];
        
        [self.commandDelegate sendPluginResult:result callbackId:callbackId];
    }];
}

- (void) nonThreadFunction:(CDVInvokedUrlCommand*)command{
    // Check command.arguments here.
    NSString *callbackId  = [command callbackId];
    NSString *scheduleCallback  = [[command arguments] objectAtIndex:0];
    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:scheduleCallback];
    
    [self.commandDelegate sendPluginResult:result callbackId:callbackId];
    
}

@end