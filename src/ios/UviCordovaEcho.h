#import <Cordova/CDV.h>

@interface UviCordovaEcho : CDVPlugin

- (void) threadFunction:(CDVInvokedUrlCommand*)command;
- (void) nonThreadFunction:(CDVInvokedUrlCommand*)command;

@end