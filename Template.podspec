Pod::Spec.new do |s|
  s.name         = "ArtisanSDK"
  s.version      = ""
  s.summary      = "Master your mobile experience like never before.
Artisan is the first Mobile Experience Management platform that makes it easy to create and manage mobile experiences that drive retention, engagement, and revenue. Gain deep insights into user behavior, quickly modify and publish changes in real-time without writing code or waiting for app store approvals."
  s.homepage     = "http://www.useartisan.com"
  s.license      = { :type => 'Proprietary', :file => 'FILE_LICENSE' }
  s.author       = { "Artisan" => "support@useartisan.com" }
  s.source       = { :git => "https://github.com/ArtisanMobile/ArtisanSDK.git", :tag => '' }
  s.source_files = 'ArtisanSDK.framework/Headers/*.h'
  s.platform     = :ios, '6.0'
  s.resources    = 'ArtisanSDK.bundle'
  s.frameworks   = 'ArtisanSDK', 'CoreData', 'CFNetwork', 'Security', 'QuartzCore', 'SystemConfiguration', 'CoreLocation'
  s.library      = 'z'
  s.requires_arc = true
  s.documentation = { :html => 'http://useartisan.com/' }
  s.preserve_path = 'ArtisanSDK.framework'
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)"', 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PODS_ROOT)/ArtisanSDK"', 'OTHER_LDFLAGS' => '-ObjC, -lz'}
end
