#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include <hxcpp.h>
#include <stddef.h>
#include "RateMobileApp.h"

using namespace ratemobileapp;

//

static value ratemobileapp_openRateAppLink(value appId) {
	openRateAppLink(val_string(appId));
	return alloc_null();
}
DEFINE_PRIM (ratemobileapp_openRateAppLink, 1);

extern "C" void ratemobileapp_main () {
	val_int(0); // Fix Neko init
}
DEFINE_ENTRY_POINT (ratemobileapp_main);

extern "C" int ratemobileapp_register_prims () { return 0; }