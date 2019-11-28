#!/bin/sh

AneVersion="1.3.0"
FreKotlinVersion="1.9.1"

wget -O android_dependencies/com.tuarua.frekotlin-$FreKotlinVersion.ane https://github.com/tuarua/Android-ANE-Dependencies/blob/master/anes/kotlin/com.tuarua.frekotlin-$FreKotlinVersion.ane?raw=true
wget -O ../native_extension/ane/DeviceInfoANE.ane https://github.com/tuarua/DeviceInfo-ANE/releases/download/$AneVersion/DeviceInfoANE.ane?raw=true
