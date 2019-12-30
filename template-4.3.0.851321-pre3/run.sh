
. config.sh

$ANDROID_SDK/platform-tools/adb shell am force-stop $APP_PACKAGE
$ANDROID_SDK/platform-tools/adb shell am start -n $APP_PACKAGE/$APP_ACTIVITY
