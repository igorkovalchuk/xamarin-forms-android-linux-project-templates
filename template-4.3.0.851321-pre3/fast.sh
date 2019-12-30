DATE1=$(date)

. config.sh

$ANDROID_SDK/platform-tools/adb shell am force-stop $APP_PACKAGE &

msbuild $PCL_DIR

$ANDROID_SDK/platform-tools/adb shell run-as $APP_PACKAGE rm $ANDROID_OVERRIDE_DIR/$PCL_NAME.dll
$ANDROID_SDK/platform-tools/adb shell run-as $APP_PACKAGE rm $ANDROID_OVERRIDE_DIR/$PCL_NAME.pdb

# https://stackoverflow.com/a/40983617
$ANDROID_SDK/platform-tools/adb push $PCL_PREFIX.dll /sdcard/Download
$ANDROID_SDK/platform-tools/adb push $PCL_PREFIX.pdb /sdcard/Download

$ANDROID_SDK/platform-tools/adb shell run-as $APP_PACKAGE cp /sdcard/Download/$PCL_NAME.dll $ANDROID_OVERRIDE_DIR
$ANDROID_SDK/platform-tools/adb shell run-as $APP_PACKAGE cp /sdcard/Download/$PCL_NAME.pdb $ANDROID_OVERRIDE_DIR

echo $DATE1
$ANDROID_SDK/platform-tools/adb shell am start -n $APP_PACKAGE/$APP_ACTIVITY
date
