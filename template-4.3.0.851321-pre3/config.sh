
APP_PACKAGE=com.example.sampleresources

# find this activity name here: Droid/obj/Debug/android/manifest
APP_ACTIVITY=md5fb8a0799bce7fc4c22b44650c5902ec5.MainActivity

APP_NAME=SampleResources


APP_DIR=/home/myhomedir/projects/template-4.3.0.851321-pre3

APP_DROID_DIR=$APP_DIR/SampleResources.Android

APP_DROID_CSPROJ=$APP_DROID_DIR/SampleResources.Android.csproj
APP_DROID_PREFIX=$APP_DROID_DIR/bin/Debug/$APP_NAME

# This is an old name of variable. In this project we don't have the PCL.
PCL_NAME=SampleDotNet1

PCL_DIR=$APP_DIR/SampleResources
PCL_CSPROJ=$PCL_DIR/$PCL_NAME.csproj
PCL_PREFIX=$PCL_DIR/bin/Debug/netstandard2.0/$PCL_NAME

ANDROID_OVERRIDE_DIR=/data/data/$APP_PACKAGE/files/.__override__

ANDROID_SDK=/home/myhomedir/Android/Sdk

AVD_NAME=Pixel_3a_XL_API_28
