# DeviceInfo-ANE

Device Info Adobe Air Native Extension for iOS 9.0+ and Android 19+.    

-------------

## Android

#### The ANE + Dependencies

cd into /example and run:
- macOS (Terminal)
```shell
bash get_android_dependencies.sh
```
- Windows Powershell
```shell
PS get_android_dependencies.ps1
```

```xml
<extensions>
<extensionID>com.tuarua.frekotlin</extensionID>
<extensionID>com.tuarua.DeviceInfoANE</extensionID>
...
</extensions>
```

#### AIR 32 & 33
This ANE is built against AIR 33 SDK. If you wish to use with AIR 32 you will need to replace dx.jar in lib/android/bin/ with [this one](https://github.com/tuarua/Android-ANE-Dependencies/blob/master/AIR32_patch/lib/android/bin/dx.jar?raw=true)

-------------

## iOS

#### The ANE + Dependencies

N.B. You must use a Mac to build an iOS app using this ANE. Windows is NOT supported.

From the command line cd into /example and run:

```shell
bash get_ios_dependencies.sh
```

This folder, ios_dependencies/device/Frameworks, must be packaged as part of your app when creating the ipa. How this is done will depend on the IDE you are using.
After the ipa is created unzip it and confirm there is a "Frameworks" folder in the root of the .app package.   

### Prerequisites

You will need:

- IntelliJ IDEA / Flash Builder
- AIR 33 or greater
- Android Studio 3 if you wish to edit the Android source
- Xcode 10.1
- wget on macOS
- Powershell on Windows
