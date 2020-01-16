Rate Mobile App
===============
Haxe extension for opening mobile application page in stores.

### How to use
Add following line in project.xml:
```
<haxelib name="rate-mobile-app" />
```

In code just call static method:
```
import com.moxisgames.extensions.RateMobileApp;

var appId:String = "{YOUR_APP_ID_IN_STORE}"; // required only for iOS App Store
RateMobileApp.openRateAppLink(appId);
```