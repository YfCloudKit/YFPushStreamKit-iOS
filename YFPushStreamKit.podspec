#
#  Be sure to run `pod spec lint YfPlayerDemo-iOS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "YFPushStreamKit"
  s.version      = "0.0.1"
  s.summary      = "云帆推流器"

  s.description  = <<-DESC
  支持推流，faceu美颜，滤镜等等
                   DESC

  s.homepage     = "https://github.com/YfCloudKit/YFPushStreamKit-iOS"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "liuzhibing" => "373301593@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/YfCloudKit/YFPushStreamKit-iOS.git", :tag => s.version.to_s }
  s.vendored_frameworks =  "YFPushStreamKit/*.{framework}"
  s.vendored_libraries = "YFPushStreamKit/Classes/ffmpeg/lib/*.a"
  s.preserve_paths = ["YFPushStreamKit/Classes/ffmpeg/lib/*.a","YFPushStreamKit/Classes/ffmpeg/include/**/*.h"]
  s.ios.deployment_target = '8.0'
  s.frameworks   = 'VideoToolbox','Security','SystemConfiguration','ImageIO','MobileCoreServices','CoreMotion','Accelerate','GLKit','OpenGLES','CoreVideo','CoreMedia','CFNetwork','AudioToolbox','AVFoundation','CoreGraphics','Foundation','UIKit'
  s.libraries = 'z','c++','bz2','stdc++.6','avcodec','avfilter','avformat','avutil','swresample','swscale'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/YFPushStreamKit/Classes/ffmpeg/include"','LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/YFPushStreamKit/Classes/ffmpeg/lib"' }
  s.requires_arc = true

end
