#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <dlfcn.h>
#import <substrate.h>

static NSString *(*CHOrigCellularString)(id, SEL);

static NSString *CHCellularString(id self, SEL _cmd) {
    if (CHOrigCellularString) {
        (void)CHOrigCellularString(self, _cmd);
    }
    return @"";
}

static NSString *CHCellularCrossfadeString(id self, SEL _cmd) {
    (void)self;
    (void)_cmd;
    return @"";
}

static void CHInstallHook(const char *className,
                          const char *selectorName,
                          IMP replacement,
                          IMP *original) {
    Class cls = objc_getClass(className);
    if (!cls) {
        return;
    }

    SEL selector = sel_registerName(selectorName);
    Method method = class_getInstanceMethod(cls, selector);
    if (!method) {
        return;
    }

    MSHookMessageEx(cls, selector, replacement, original);
}

__attribute__((constructor))
static void CHInitialize(void) {
    @autoreleasepool {
        // SpringBoard links SystemStatus, but load it explicitly if the
        // private entry class is not registered yet.
        if (!objc_getClass("STStatusBarDataCellularEntry")) {
            (void)dlopen("/System/Library/PrivateFrameworks/SystemStatus.framework/SystemStatus",
                         RTLD_NOW);
        }

        CHInstallHook("STStatusBarDataCellularEntry",
                      "string",
                      (IMP)CHCellularString,
                      (IMP *)&CHOrigCellularString);

        CHInstallHook("STStatusBarDataCellularEntry",
                      "crossfadeString",
                      (IMP)CHCellularCrossfadeString,
                      NULL);
    }
}
