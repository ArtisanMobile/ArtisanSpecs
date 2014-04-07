Installing the [ArtisanSDK](http://www.useartisan.com) via [CocoaPods](http://www.cocoapods.org)
=================

If your project is already using [CocoaPods](http://www.cocoapods.org) for managing your library dependencies you may wish to install the Artisan SDK in the same way. If you do not currently use CocoaPods, but would like to, this is an alternative method to install, manage, and update Artisan in your project.

Installing CocoaPods
=========
Installing CocoaPods is easy!

From the terminal:
```
$ [sudo] gem install cocoapods
$ pod setup
```

Referencing the ArtisanSpecs Repository
============
The ArtisanSDK is not distributed through the CocoaPods pod spec repository. We maintain our own private spec repository to manage the different release versions of Artisan. In order to inform CocoaPods about the location of this repository you can run: 
`pod repo add ArtisanSpecs git@github.com:ArtisanMobile/ArtisanSpecs.git`

Creating/Editing a Podfile
============
In order to manage your library dependecies with CocoaPods you need to [create a podfile](http://docs.cocoapods.org/podfile.html).

Create a file called `podfile` in the root directory of your project with the following:

```
platform :ios, '6.0'  # minimum ios version for Artisan

pod 'ArtisanSDK'
```

If you are already using CocoaPods, you can just add the pod line to your existing pod file and update the minimum iOS platform version.

The above line will use the latest version of Artisan. Should you choose to lock yourself at a version you can modify that line:
`pod 'ArtisanSDK', '2.0.17'`

In order to upgrade or downgrade the version number you will need to delete the previously downloaded files from your Pods directory. From the directory containing your Podfile:
`rm -rf Pods/ArtisanSDK`


Install Dependencies
============
Installing your dependencies is as easy as executing `pod install` from the location of your podfile. Should you want to update Artisan to a newer version, you can update your podfile to reflect that version and re-run `pod install`.

Important
=============
When you install your dependencies, CocoaPods will create an _**.xcworkspace**_ for your project. You will need to open this instead of your .xcodeproj file whenever you want to work with your project from this point forward. 

The workspace keeps your code separate from the dependencies managed by CocoaPods while keeping track of the required build settings for each sub-project and implementing them on a per-project basis.


Enabling Artisan in Your Project
=============
To enable Artisan at this point requires the addition of two lines to your AppDelegate file.

At the top of the file with your other import statements, add:
```objective-c
#import <ArtisanSDK/ArtisanSDK.h>
```

Inside your application:didFinishLaunchingWithOptions: method, add the following line before all `return YES;` lines.
```objective-c
[ARManager startWithAppId:@"##########################"];
```
where ########################## is the Artisan App ID of your app. This can be found on artisantools.com either in your getting started notification or on your app settings page.

Troubleshooting
==============

If you see this error when running pod install:
```
    [!] The target `mysampletarget [Debug]` overrides the `OTHER_LDFLAGS` build setting defined in `Pods/Pods.xcconfig'.
        - Use the `$(inherited)` flag, or
        - Remove the build settings from the target.
```
You can follow these steps to fix it in xcode:
* Select your project file.
* Select your target.
* Select the Build Settings tab.
* Locate Other Linker Flags and add `$(inherited)`


If building your project after enabling the SDK through the code changes above results in an error referencing an inability to locate `<ArtisanSDK/ArtisanSDK.h>` you may need to edit your build settings on your target. To do this:

* Select your project file.
* Select your target.
* Select the Build Settings tab.
* Locate the Framework Search Paths and add `$(PODS_ROOT)/ArtisanSDK`

This should allow you to successfully build your app.
