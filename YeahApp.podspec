Pod::Spec.new do |spec|
  spec.name          = 'YeahApp'
  spec.version       = '1.0.0'
  spec.license       = { :type => 'BSD' }
  spec.homepage      = 'https://github.com/iOS-User2022/YeahApp'
  spec.authors       = { 'iOS-User2022' => 'iosteam2022@gmail.com' }
  spec.summary       = 'It is a ad delivered sdk'
  spec.source        = { :git => 'https://github.com/iOS-User2022/YeahApp.git', :tag => 'v1.0.0' }
  spec.module_name   = 'Rich'
  spec.swift_version = '5.0'
  spec.vendored_frameworks = 'YeahAds.xcframework'
  spec.ios.deployment_target  = '13.0'

  spec.framework      = 'SystemConfiguration'
  spec.ios.framework  = 'UIKit'


end