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
public class DeviceInfoAndroid {
    /** The name of the underlying board, like "goldfish".*/
    public var board:String;
    /** The system bootloader version number.*/
    public var bootloader:String;
    /** The consumer-visible brand with which the product/hardware will be associated, if any.*/
    public var brand:String;
    /** The name of the industrial design.*/
    public var device:String;
    /** A build ID string meant for displaying to the user*/
    public var display:String;
    /** A string that uniquely identifies this build. Do not attempt to parse this value. */
    public var fingerprint:String;
    /** The name of the hardware (from the kernel command line or /proc). */
    public var hardware:String;
    public var host:String;
    /** Either a changelist number, or a label like "M4-rc20".*/
    public var id:String;
    /** The manufacturer of the product/hardware.*/
    public var manufacturer:String;
    /** The end-user-visible name for the end product.*/
    public var model:String;
    /** The name of the overall product.*/
    public var product:String;
    /** Comma-separated tags describing the build, like "unsigned,debug".*/
    public var tags:String;
    /** The type of build, like "user" or "eng".*/
    public var type:String;
    public var isPhysicalDevice:Boolean;
    public var androidId:String;
    /** An ordered list of 32 bit ABIs supported by this device. The most preferred ABI is the first element in the list.*/
    public var supported32BitAbis:Vector.<String>;
    /** An ordered list of 64 bit ABIs supported by this device. The most preferred ABI is the first element in the list*/
    public var supported64BitAbis:Vector.<String>;
    /** An ordered list of ABIs supported by this device. The most preferred ABI is the first element in the list.*/
    public var supportedAbis:Vector.<String>;
    public var version:DeviceInfoAndroidVersion;

    public function DeviceInfoAndroid() {
    }
}
}