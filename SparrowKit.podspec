Pod::Spec.new do |s|
  s.name             = 'SparrowKit'
  s.version          = '0.1.2'
  s.summary          = 'A short description of YourLibraryName.'
  
  s.description      = <<-DESC
  A longer description of YourLibraryName in Markdown format.
  DESC

  s.homepage         = 'https://github.com/sqdxxx/SparrowKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lsx' => 'sqdxxx@gmail.com' }
  s.source           = { :git => 'https://github.com/sqdxxx/SparrowKit.git', :tag => s.version.to_s }
  

#   s.platform     = :ios
#   s.platform     = :ios, "15.0"
  
  s.ios.deployment_target = '15.0'
  s.source_files = 'Sources/**/*.{h,m,swift}'

  # s.dependency 'SomeOtherPod'
end
