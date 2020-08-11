#
# Be sure to run `pod lib lint Zoom-SDK-iOS-Dev-Catalyst.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Zoom-SDK-iOS-Dev-Catalyst'
  s.version          = '5.0.24433.0616'
  s.summary          = 'This contains the development pod for Zoom iOS SDK'
  s.description      = 'This contains the development pod for Zoom iOS SDK. It only contains the frameworks required. Works in Simulator'

  s.homepage         = 'https://github.com/zoom/zoom-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'NikhilCatalyst' => 'nikhilbkuriakose@gmail.com' }
  s.source           = { :git => 'https://github.com/NikhilCatalyst/Zoom-SDK-iOS-Dev-Catalyst.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.default_subspec = 'Core'
  s.requires_arc = true

  s.subspec 'Core' do |subspec|
    subspec.ios.source_files           = "MobileRTC.framework/Headers/**/*.{h,m}"
    subspec.ios.public_header_files    = "MobileRTC.framework/Headers/**/*.{h,m}"
    subspec.ios.vendored_frameworks    = "MobileRTC.framework"

    subspec.ios.resource = "MobileRTCResources.bundle"
  end

end
