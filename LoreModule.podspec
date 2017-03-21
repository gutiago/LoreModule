Pod::Spec.new do |s|
  s.name         = "LoreModule"
  s.version      = "0.7.0"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/gutiago/LoreModule"
  
  s.license      = { :type => 'LGPL', :file => 'LICENSE' }
  s.author       = { "Gustavo Tiago" => "gustavo.tiago@moymer.com" } # Podspec maintainer
  s.requires_arc = false
  
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = '9.0'

  s.source       = { :git => "https://github.com/gutiago/LoreModule.git", :tag => "0.7.0" }


  s.source_files = 'FFmpegWrapper/*.{h,m}', 'ffmpeg-ios-static-libs/include/**/*.h'
  s.public_header_files = 'ffmpeg-ios-static-libs/include/**/*.h'
  s.header_mappings_dir = 'ffmpeg-ios-static-libs/include'
  s.vendored_libraries  = 'ffmpeg-ios-static-libs/lib/*.a'
  s.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'


end
