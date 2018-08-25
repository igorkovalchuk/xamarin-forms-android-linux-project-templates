
DATE1=$(date)

# Run application (transfer the apk file to the device and run it)

. config.sh

# PLATFORM_PREFIX=
# PLATFORM_PREFIX=-x86
PLATFORM_PREFIX=-armeabi-v7a

$ANDROID_SDK/platform-tools/adb shell rm /data/data/$APP_PACKAGE/files/.__override__/*

$ANDROID_SDK/platform-tools/adb install -r $APP_DROID_DIR/bin/Release/${APP_PACKAGE}${PLATFORM_PREFIX}-Signed.apk
$ANDROID_SDK/platform-tools/adb shell am start -n $APP_PACKAGE/$APP_ACTIVITY

echo $DATE1
date
