# Cordova Echo Plugin

Simple plugin that helps to echo the message for support both iOS and Android platforms.

##Two kind of Echo messages plugins.

    1. Thread-safe callback.    
    2. Non Thread-safe callback.

## Using
Clone the plugin

    $ git clone https://github.com/vigneshuvi/cordova-plugin-Echo.git

Create a new Cordova Project

    $ cordova create echo com.uviexample.uviechoapp Echo
    
Install the plugin

    $ cd echo
    $ cordova plugin add ../cordova-plugin-Echo
    

Edit `www/js/index.js` and add the following code inside `onDeviceReady` and save the file.

```js
        var success = function(message) {
            alert(message);
        }

        var failure = function() {
            alert("Error calling Echo Plugin");
        }

       echo.threadFunction("Echo me - thread!!!", success, failure);
       echo.nonThreadFunction("Echo me - nonthread!!!", success, failure);
```

Install iOS or Android platform

    cordova platform add ios
    cordova platform add android

Build the code 

    cordova build     
    
Run the code

    cordova run 

## More Info

For more information on setting up Cordova see [the documentation](http://cordova.apache.org/docs/en/4.0.0/guide_cli_index.md.html#The%20Command-Line%20Interface)

For more info on plugins see the [Plugin Development Guide](http://cordova.apache.org/docs/en/4.0.0/guide_hybrid_plugins_index.md.html#Plugin%20Development%20Guide)
