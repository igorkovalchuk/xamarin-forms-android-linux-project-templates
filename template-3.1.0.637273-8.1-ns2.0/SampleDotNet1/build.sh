
# msbuild - build entire project

DATE1=$(date)

. config.sh

msbuild /verbosity:d /p:AndroidBuildApplicationPackage=true /p:AndroidSdkDirectory=$ANDROID_SDK $APP_DROID_DIR

echo $DATE1
date

echo msbuild $APP_DROID_DIR
