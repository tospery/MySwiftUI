source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '16.0'
use_frameworks!

target 'MySwiftUI' do
  pod 'HiBase', :path => '../HiBase'
  pod 'HiCore', :path => '../HiCore'
  pod 'HiNet/Combine', :path => '../HiNet'
  pod 'HiLog/SwiftyBeaver', :path => '../HiLog'
  pod 'HiResource', :path => '../HiResource'
  pod 'HiSwiftUI', :path => '../HiSwiftUI'
  
  pod 'Parchment', '~> 4.0'
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
