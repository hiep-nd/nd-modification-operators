Pod::Spec.new do |s|
  s.name         = "NDModificationOperators"
  s.version      = "1.0"
  s.summary      = "Added modification methods for object."
  s.description  = <<-DESC
  NDModificationOperators is a small framework that add modification operators and methods.
                   DESC
  s.homepage     = "https://github.com/hiep-nd/nd-modification-operators"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Nguyen Duc Hiep" => "hiep.nd@gmail.com" }
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.swift_versions = ['4.0', '5.1', '5.2']
  #s.source        = { :http => 'file:' + __dir__ + "/" }
  s.source       = { :git => "https://github.com/hiep-nd/nd-modification-operators.git", :tag => "Pod-#{s.version}" }

  s.subspec 'ObjC' do |ss|
    ss.source_files = "Sources/ObjC/*.{h,m,mm,swift}"
  end

  s.subspec 'Swift' do |ss|
    ss.source_files = "Sources/Swift/*.{h,m,mm,swift}"
  end

  s.default_subspec = 'Swift'
end
