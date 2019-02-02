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

import Foundation
import FreSwift

public class SwiftController: NSObject {
    public static var TAG = "SwiftController"
    public var context: FreContextSwift!
    public var functionsToSet: FREFunctionMap = [:]
    
    func initController(ctx: FREContext, argc: FREArgc, argv: FREArgv) -> FREObject? {
        guard let ret = FreObjectSwift(className: "com.tuarua.DeviceInfoIos") else { return nil }
        let device = UIDevice.current
        ret.name = device.name
        ret.systemName = device.systemName
        ret.systemVersion = device.systemVersion
        ret.model = device.model
        ret.localizedModel = device.localizedModel
        ret.identifierForVendor = device.identifierForVendor?.uuidString
        ret.modelName = device.modelName
#if TARGET_OS_SIMULATOR
        ret.isPhysicalDevice = false
#else
        ret.isPhysicalDevice = true
#endif
        return ret.rawValue
    }
}
