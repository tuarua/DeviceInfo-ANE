/*
 *  Copyright 2019 Tua Rua Ltd.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

package com.tuarua {
public class DeviceInfoIos {
    /** The name identifying the device.*/
    public var name:String;
    /** The name of the operating system running on the device represented by the receiver.*/
    public var systemName:String;
    /** The current version of the operating system.*/
    public var systemVersion:String;
    /** The model of the device.*/
    public var model:String;
    /** The model of the device as a localized string.*/
    public var localizedModel:String;
    /** An alphanumeric string that uniquely identifies a device to the app’s vendor.*/
    public var identifierForVendor:String;
    public var modelName:String;
    public var isPhysicalDevice:Boolean;

    public function DeviceInfoIos() {
    }
}
}