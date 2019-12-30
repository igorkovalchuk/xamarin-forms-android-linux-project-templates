
. config.sh

# If you set AndroidCreatePackagePerAbi = true
# it doesn't sign bin/Release/$APP_PACKAGE-x86-Signed.apk and other apk by default,
# so we must sign it manually.

# https://developer.android.com/studio/command-line/apksigner

# PLATFORM_PREFIX=-x86
PLATFORM_PREFIX=-armeabi-v7a

MIN_SDK_VERSION=15

# Please use your own values here, your password instead of "android", etc.
$ANDROID_SDK/build-tools/27.0.2/apksigner sign --ks ~/".local/share/Xamarin/Mono for Android/debug.keystore" --ks-pass pass:android --ks-key-alias androiddebugkey --key-pass pass:android --min-sdk-version $MIN_SDK_VERSION --max-sdk-version 27 $APP_DROID_DIR/bin/Release/${APP_PACKAGE}${PLATFORM_PREFIX}-Signed.apk

# Alternative syntax (with the same parameters) is:
# $JAVA_HOME/bin/java -jar $ANDROID_SDK/build-tools/27.0.3/lib/apksigner.jar 
