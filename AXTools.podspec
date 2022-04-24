Pod::Spec.new do |s|
  s.name             = 'AXTools'
  s.version          = '1.0.2'
  s.summary          = '一些常用组件 AXTools'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wq95230/AXTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '952303557@qq.com' => '952303557@qq.com' }
  s.source           = { :git => 'https://github.com/wq95230/AXTools.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  
#   s.source_files = 'AXTools/Classes/AXTools'
  
  # s.resource_bundles = {
  #   'AXTools' => ['AXTools/Assets/*.png']
  # }
 
  s.public_header_files = 'AXTools/Classes/AXTools.h'
  s.frameworks = 'UIKit'
  s.default_subspecs = 'XXProgressHUD', 'YCTool'
  
  s.source_files = 'AXTools/Classes/AXTools.h'
  s.public_header_files = 'AXTools/Classes/AXTools.h'

   s.subspec 'XXProgressHUD' do |ss|
       ss.source_files = 'AXTools/Classes/XXProgressHUD/*.{h,m}'
       ss.dependency 'MBProgressHUD', '1.2.0'
   end

   s.subspec 'YCTool' do |ss|
       ss.source_files = 'AXTools/Classes/YCTool/*.{h,m}'
   end

end
