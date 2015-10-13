source 'https://github.com/CocoaPods/Specs.git'

# Configurations which are not compiled for release on the App Store
# NOT_APP_STORE_CONFIGS = ['Debug', 'Alpha', 'Beta', 'AdHoc'].freeze

platform :ios, :deployment_target => '8.0'

use_frameworks!
inhibit_all_warnings!

xcodeproj 'Wikipedia'

# HTML
pod 'DTCoreText', '~> 1.6.16'
pod 'hpple', '~> 0.2'

# Networking / Parsing
pod 'AFNetworking/NSURLConnection', '~> 2.6.0'
pod 'Mantle', '~> 2.0.0'

# Images
pod 'SDWebImage', :path => './vendor/SDWebImage'
pod 'AnimatedGIFImageSerialization'

# Utilities
pod 'libextobjc/EXTScope', '~> 0.4.1'
pod 'BlocksKit/Core', '~> 2.2.0'
pod 'BlocksKit/UIKit', '~> 2.2.0'
pod 'PromiseKit', :git => 'https://github.com/mxcl/PromiseKit.git', :branch => 'swift-2.0-beta5'
pod 'Tweaks', :head

# KVO
pod 'KVOController'

# Datasources
pod 'SSDataSources', '~> 0.8.0'

# Autolayout
pod 'Masonry', '0.6.2'

# Collection View layout
pod 'SelfSizingWaterfallCollectionViewLayout', :git => 'git@github.com:wikimedia/SelfSizingWaterfallCollectionViewLayout.git'

# Diagnostics
pod 'PiwikTracker'
pod 'CocoaLumberjack/Swift', :git => 'https://github.com/CocoaLumberjack/CocoaLumberjack.git', :branch => 'swift_2.0'
pod 'HockeySDK', '~> 3.8.2'

target 'WikipediaUnitTests', :exclusive => true do
  pod 'OCMockito', '~> 1.4.0'
  pod 'OCHamcrest', '~> 4.2.0'
  pod 'Nocilla'
  pod 'FBSnapshotTestCase/Core', '~> 2.0.3'
end

pod 'SVWebViewController', '~> 1.0'

post_install do |installer_representation|
  installer_representation.pods_project.targets.each do |target|
    if target.name == "Tweaks"
      target.build_configurations.each do |config|
        if config.name != 'Release'
          config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)', 'FB_TWEAK_ENABLED=1']
        end
      end
    end
  end
end

