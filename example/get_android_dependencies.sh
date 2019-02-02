#!/bin/sh

AneVersion="1.0.0"

wget -O android_dependencies/com.tuarua.frekotlin.ane https://github.com/tuarua/Android-ANE-Dependencies/blob/master/anes/kotlin/com.tuarua.frekotlin.ane?raw=true
wget -O ../native_extension/ane/DeviceInfoANE.ane https://github.com/tuarua/DeviceInfo-ANE/releases/download/$AneVersion/DeviceInfoANE.ane?raw=true
