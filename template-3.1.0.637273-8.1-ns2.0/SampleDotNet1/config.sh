
APP_PACKAGE=org.example.SampleDotNet1

# find this activity name here: Droid/obj/Debug/android/manifest
APP_ACTIVITY=md51cbc34b4e0c459aca239424837674266.MainActivity

APP_NAME=SampleDotNet1


APP_DIR=/home/myhomedir/projects/template-3.1.0.637273-8.1-ns2.0/SampleDotNet1

APP_DROID_DIR=$APP_DIR/Droid

APP_DROID_CSPROJ=$APP_DROID_DIR/$APP_NAME.Android.csproj
APP_DROID_PREFIX=$APP_DROID_DIR/bin/Debug/$APP_NAME

# This is an old name of variable. In this project we don't have the PCL.
PCL_NAME=SampleDotNet1

PCL_DIR=$APP_DIR/DotNet1
PCL_CSPROJ=$PCL_DIR/$PCL_NAME.csproj
PCL_PREFIX=$PCL_DIR/bin/Debug/netstandard2.0/$PCL_NAME

ANDROID_OVERRIDE_DIR=/data/data/$APP_PACKAGE/files/.__override__

ANDROID_SDK=/home/myhomedir/Android/Sdk

AVD_NAME=Pixel_3a_XL_API_28
