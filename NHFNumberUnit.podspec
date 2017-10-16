Pod::Spec.new do |s|
  s.name             = "NHFNumberUnit"
  s.version          = "1.0.2"
  s.summary          = "对价格等参数进行格式化处理操作"
  s.homepage         = "https://github.com/nhfc99/NHFNumberUnit"
  s.license          = 'MIT'
  s.author           = {"牛宏飞"=>"nhfc99@163.com"}  
  s.source           = {:git => "https://github.com/nhfc99/NHFNumberUnit.git",:tag => s.version.to_s}

  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true
  s.source_files = 'Number+Unit/*.{h,m}'  
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end
