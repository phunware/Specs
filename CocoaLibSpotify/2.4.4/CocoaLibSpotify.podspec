Pod::Spec.new do |s|
  s.name         =  'CocoaLibSpotify'
  s.version      =  '2.4.4'
  s.author       =  'Spotify'
  s.license      =  'BSD 3-Clause'
  s.homepage     =  'https://github.com/spotify/cocoalibspotify'
  s.summary      =  'A Cocoa wrapper for libspotify.'
  s.description  =  "CocoaLibSpotify is an Objective-C wrapper around our libspotify library. It provides easy access to libspotify's features in a friendly, KVC/O compliant Objective-C wrapper."
  s.source       =  { :git => 'https://github.com/spotify/cocoalibspotify.git', :tag => "2.4.4" }
  s.requires_arc =  true
  s.preserve_paths = 'libspotify-12.1.64-iOS-universal'
  s.source_files =  'common', 'iOS Library/View Controllers', 'libspotify-12.1.64-iOS-universal/libspotify.framework/Versions/12.1.64/Headers'
  s.resource     =  'iOS Library/SPLoginResources.bundle'
  s.frameworks   =  'SystemConfiguration', 'CFNetwork', 'CoreAudio', 'AudioToolbox', 'AVFoundation', 'libspotify'
  s.library      =  'stdc++'
  s.xcconfig     =  { 'OTHER_LDFLAGS' => '-all_load', 'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/CocoaLibSpotify/libspotify-12.1.64-iOS-universal' }
  s.platform     =  :ios

  s.prepare_command = 'echo "This Pod relies on the removed \`pre_install\` or \`post_install\` hooks and therefore will no longer continue to work. Please try updating to the latest version of this Pod or updating the Pod specification. See http://blog.cocoapods.org/CocoaPods-Trunk/ for more details." && exit 1'
end
