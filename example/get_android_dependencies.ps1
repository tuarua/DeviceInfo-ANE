$AneVersion = "1.3.0"
$FreKotlinVersion = "1.9.5"

$currentDir = (Get-Item -Path ".\" -Verbose).FullName
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri https://github.com/tuarua/DeviceInfo-ANE/releases/download/$AneVersion/DeviceInfoANE.ane?raw=true -OutFile "$currentDir\..\native_extension\ane\DeviceInfoANE.ane"
Invoke-WebRequest -OutFile "$currentDir\android_dependencies\com.tuarua.frekotlin-$FreKotlinVersion.ane" -Uri https://github.com/tuarua/Android-ANE-Dependencies/blob/master/anes/kotlin/com.tuarua.frekotlin-$FreKotlinVersion.ane?raw=true