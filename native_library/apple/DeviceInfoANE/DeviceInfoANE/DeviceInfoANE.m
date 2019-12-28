/* Copyright 2019 Tua Rua Ltd.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "FreMacros.h"
#import "DeviceInfoANE_oc.h"
#import <DeviceInfoANE_FW/DeviceInfoANE_FW.h>

#define FRE_OBJC_BRIDGE TRDVI_FlashRuntimeExtensionsBridge
@interface FRE_OBJC_BRIDGE : NSObject<FreSwiftBridgeProtocol>
@end
@implementation FRE_OBJC_BRIDGE {
}
FRE_OBJC_BRIDGE_FUNCS
@end

@implementation DeviceInfoANE_LIB
SWIFT_DECL(TRDVI)
CONTEXT_INIT(TRDVI) {
    SWIFT_INITS(TRDVI)
    
    static FRENamedFunction extensionFunctions[] =
    {
         MAP_FUNCTION(TRDVI, init)
    };
    
    SET_FUNCTIONS
    
}

CONTEXT_FIN(TRDVI) {
    [TRDVI_swft dispose];
    TRDVI_swft = nil;
    TRDVI_freBridge = nil;
    TRDVI_swftBridge = nil;
    TRDVI_funcArray = nil;
}
EXTENSION_INIT(TRDVI)
EXTENSION_FIN(TRDVI)
@end
