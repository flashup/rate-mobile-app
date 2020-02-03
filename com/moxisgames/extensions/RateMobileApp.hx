package com.moxisgames.extensions;

#if android
import lime.system.JNI;
#elseif ios
import cpp.Lib;
#end

class RateMobileApp {
	#if android
	static private inline var ANDROID_CLASS_PATH:String = "com.moxisgames.ratemobileapp.RateMobileApp";
	#end

	/**
	 * @param appId - (iOS only) app id from App Store
	 **/
	static public function openRateAppLink(appId:String = null):Void {
		#if android
		var openRateAppLink:Dynamic = JNI.createStaticMethod(ANDROID_CLASS_PATH, "openRateAppLink", "()V");
		openRateAppLink();
		#elseif ios
		if (appId == null) {
			throw "[RateMobileApp] You must provide appId for iOS target!";
		}

		var openRateAppLink:Dynamic = Lib.load("ratemobileapp", "ratemobileapp_openRateAppLink", 1);
		if (openRateAppLink == null) {
			trace("[RateMobileApp] openRateAppLink function is null!");
			return;
		}

		openRateAppLink(appId);
		#end
	}
}
