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
public class DeviceInfoAndroidVersion {
    /** The base OS build the product is based on.*/
    public var baseOS:String;
    /** The developer preview revision of a prerelease SDK. This value will always be 0 on production platform builds/devices.*/
    public var previewSdkInt:int;
    /** The user-visible security patch level.*/
    public var securityPatch:String;
    /** The current development codename, or the string "REL" if this is a release build.*/
    public var codename:String;
    /** The internal value used by the underlying source control to represent this build. E.g., a perforce changelist number or a git hash.*/
    public var incremental:String;
    /** The user-visible version string. E.g., "1.0" or "3.4b5".*/
    public var release:String;
    /** The SDK version of the software currently running on this hardware device. This value never changes while a device is booted,
     * but it may increase when the hardware manufacturer provides an OTA update.*/
    public var sdkInt:int;

    public function DeviceInfoAndroidVersion() {
    }
}
}