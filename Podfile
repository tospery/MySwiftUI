source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '16.0'
use_frameworks!

target 'MySwiftUI' do
  pod 'Parchment', '~> 4.0'
  pod 'SwifterSwift', '~> 7.0.0'
  pod 'SwiftUIKit-Hi', '5.0.0-v2'
  pod 'PulseCore', '~> 4.2.7'
  pod 'PulseUI', '~> 4.2.7'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '16.0'
    end
  end
end
