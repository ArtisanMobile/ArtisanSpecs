Quickstart for Artisan Cocoapod Install
=================

The ArtisanSDK is not distributed through the CocoaPods pod spec repository. We maintain our own private spec repository to manage the different release versions of Artisan.

In order to inform CocoaPods about the location of this repository you can run:
```
pod repo add ArtisanSpecs git@github.com:ArtisanMobile/ArtisanSpecs.git
```

In your podfile you need at least the following:
```
platform :ios, '6.0'  # minimum ios version for Artisan

pod 'ArtisanSDK'
```

Further Documentation
==================

See the complete [Artisan documentation](http://docs.useartisan.com/dev/ios-cocoapod-install/).
