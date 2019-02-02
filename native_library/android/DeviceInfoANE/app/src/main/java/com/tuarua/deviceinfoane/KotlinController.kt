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
package com.tuarua.deviceinfoane

import android.os.Build
import com.adobe.fre.FREContext
import com.adobe.fre.FREObject
import com.tuarua.frekotlin.*
import android.annotation.SuppressLint
import android.provider.Settings


@Suppress("unused", "UNUSED_PARAMETER", "UNCHECKED_CAST")
class KotlinController : FreKotlinMainController {


    @SuppressLint("HardwareIds")
    fun init(ctx: FREContext, argv: FREArgv): FREObject? {
        val ret = FREObject("com.tuarua.DeviceInfoAndroid") ?: return null
        ret["board"] = Build.BOARD.toFREObject()
        ret["bootloader"] = Build.BOOTLOADER.toFREObject()
        ret["brand"] = Build.BRAND.toFREObject()
        ret["device"] = Build.DEVICE.toFREObject()
        ret["display"] = Build.DISPLAY.toFREObject()
        ret["fingerprint"] = Build.FINGERPRINT.toFREObject()
        ret["hardware"] = Build.HARDWARE.toFREObject()
        ret["host"] = Build.HOST.toFREObject()
        ret["id"] = Build.ID.toFREObject()
        ret["manufacturer"] = Build.MANUFACTURER.toFREObject()
        ret["model"] = Build.MODEL.toFREObject()
        ret["product"] = Build.PRODUCT.toFREObject()
        ret["tags"] = Build.TAGS.toFREObject()
        ret["type"] = Build.TYPE.toFREObject()
        ret["isPhysicalDevice"] = (!isEmulator()).toFREObject()
        val appContext = ctx.activity.applicationContext
        if (appContext != null) {
            ret["androidId"] = Settings.Secure.getString(appContext.contentResolver,
                    Settings.Secure.ANDROID_ID).toFREObject()
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            ret["supported32BitAbis"] = Build.SUPPORTED_32_BIT_ABIS.toList().toFREObject()
            ret["supported64BitAbis"] = Build.SUPPORTED_64_BIT_ABIS.toList().toFREObject()
            ret["supportedAbis"] = Build.SUPPORTED_ABIS.toList().toFREObject()
        }

        val freVersion = FREObject("com.tuarua.DeviceInfoAndroidVersion")
        if (freVersion == null) trace("freVersion is null")
        //if (freVersion != null) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                freVersion["baseOS"] = Build.VERSION.BASE_OS.toFREObject()
                freVersion["previewSdkInt"] = Build.VERSION.PREVIEW_SDK_INT.toFREObject()
                freVersion["securityPatch"] = Build.VERSION.SECURITY_PATCH.toFREObject()
            }
            freVersion["codename"] = Build.VERSION.CODENAME.toFREObject()
            freVersion["incremental"] = Build.VERSION.INCREMENTAL.toFREObject()
            freVersion["release"] = Build.VERSION.RELEASE.toFREObject()
            freVersion["sdkInt"] = Build.VERSION.SDK_INT.toFREObject()
        //}
        ret["version"] = freVersion
        return ret
    }

    private fun isEmulator(): Boolean {
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")
                || Build.FINGERPRINT.startsWith("generic")
                || Build.FINGERPRINT.startsWith("unknown")
                || Build.HARDWARE.contains("goldfish")
                || Build.HARDWARE.contains("ranchu")
                || Build.MODEL.contains("google_sdk")
                || Build.MODEL.contains("Emulator")
                || Build.MODEL.contains("Android SDK built for x86")
                || Build.MANUFACTURER.contains("Genymotion")
                || Build.PRODUCT.contains("sdk_google")
                || Build.PRODUCT.contains("google_sdk")
                || Build.PRODUCT.contains("sdk")
                || Build.PRODUCT.contains("sdk_x86")
                || Build.PRODUCT.contains("vbox86p")
                || Build.PRODUCT.contains("emulator")
                || Build.PRODUCT.contains("simulator"))
    }

    override val TAG: String
        get() = this::class.java.simpleName
    private var _context: FREContext? = null
    override var context: FREContext?
        get() = _context
        set(value) {
            _context = value
            FreKotlinLogger.context = _context
        }
}