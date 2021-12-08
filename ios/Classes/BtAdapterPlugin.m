#import "BtAdapterPlugin.h"
#if __has_include(<bt_adapter/bt_adapter-Swift.h>)
#import <bt_adapter/bt_adapter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bt_adapter-Swift.h"
#endif

@implementation BtAdapterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBtAdapterPlugin registerWithRegistrar:registrar];
}
@end
