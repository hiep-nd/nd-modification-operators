Pod::Spec.new do |spec|
spec.name         = "NDModifyOperator"
  spec.version      = "0.0.1"
  spec.summary      = "Added operator • for modifying object."
  spec.description  = <<-DESC
  NDModifyOperator is a small framework that add modify operator and method to Swift and ObjC.
                   DESC
  spec.homepage     = "https://github.com/hiep-nd/nd-modify-operator"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Nguyen Duc Hiep" => "hiep.nd@gmail.com" }
  spec.ios.deployment_target = '9.0'
  spec.osx.deployment_target = '10.9'
  spec.tvos.deployment_target = '9.0'
  spec.watchos.deployment_target = '2.0'
  spec.swift_versions = ['4.0', '5.1', '5.2']
  #spec.source        = { :http => 'file:' + __dir__ + "/" }
  spec.source       = { :git => "https://github.com/hiep-nd/nd-modify-operator.git", :tag => "Pod-#{spec.version}" }
  spec.source_files  = "NDModifyOperator/**/*.{h,m,mm,swift}"
  spec.public_header_files = "NDModifyOperator/**/*.h"
end
