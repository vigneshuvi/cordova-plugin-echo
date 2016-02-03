//
//  UviCordovaEcho.h
//  UviCordovaEcho
//
//  Created by Vignesh on 2/2/16.
//  Copyright © 2016 Vignesh Uvi. All rights reserved.
//

#import <Cordova/CDV.h>

@interface UviCordovaEcho : CDVPlugin

- (void) threadFunction:(CDVInvokedUrlCommand*)command;
- (void) nonThreadFunction:(CDVInvokedUrlCommand*)command;

@end