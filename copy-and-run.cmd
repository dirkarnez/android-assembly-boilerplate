@echo off

set DEVICE_ID=

cd build
D:\Softwares\android-sdk\platform-tools\adb.exe devices
D:\Softwares\android-sdk\platform-tools\adb.exe -s %DEVICE_ID% push hello /data/local/tmp/hello
D:\Softwares\android-sdk\platform-tools\adb.exe -s %DEVICE_ID% shell chmod +x /data/local/tmp/hello
D:\Softwares\android-sdk\platform-tools\adb.exe -s %DEVICE_ID% shell /data/local/tmp/hello
pause