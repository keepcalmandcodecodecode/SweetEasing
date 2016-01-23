Pod::Spec.new do |s|
  s.name             = "SweetEasing"
  s.version          = "0.1.0"
  s.summary          = "Collection of easing functions"

  s.description      = <<-DESC
  Collection of easing functions. Includes: LinearEasing, Quart In/Out/InOut, Cubic In/Out/InOut, Quart In/Out/InOut
                       DESC

  s.homepage         = "https://github.com/keepcalmandcodecodecode/SweetEasing"
  s.license          = 'MIT'
  s.author           = { "keepcalmandcodecodecode" => "easy.dev@yandex.ru" }
  s.source           = { :git => "https://github.com/keepcalmandcodecodecode/SweetEasing.git", :tag => s.version.to_s }
  
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SweetEasing' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'UIKit'
end
