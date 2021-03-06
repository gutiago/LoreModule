Pod::Spec.new do |s|
  s.name         = "LoreModule"
  s.version      = "0.9.0"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/gutiago/LoreModule"
  
  s.license      = { :type => 'LGPL', :file => 'LICENSE' }
  s.author       = { "Gustavo Tiago" => "gustavo.tiago@moymer.com" } # Podspec maintainer
  s.requires_arc = false
  
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = '9.0'

  s.source       = { :git => "https://github.com/gutiago/LoreModule.git", :tag => "0.9.0" }


  s.source_files = 'ffmpeg-ios-static-libs/include/**/*'
  s.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'


end
