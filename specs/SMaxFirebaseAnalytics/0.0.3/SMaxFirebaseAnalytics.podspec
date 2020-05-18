Pod::Spec.new do |s|
    s.name                = 'SMaxFirebaseAnalytics'
    s.version             = '0.0.3'
    s.summary             = "[SportsMax]: Google's free, deep, and broadly integrated analytics system designed specifically for mobile."
    s.description         = "[SportsMax]: Google's free, deep, and broadly integrated analytics system designed specifically for mobile."
    s.homepage            = 'https://github.com/Digicel-Sportsmax/SMaxFirebaseAnalytics.git'
    s.license             = 'MIT'
    s.author              = { "Mohieddine Zarif" => "mohieddine.zarif@gotocme.com" }
    s.source              = { :git => 'git@github.com:Digicel-Sportsmax/SMaxFirebaseAnalytics.git', :tag => s.version.to_s }

    s.ios.deployment_target = "10.0"
    s.platform            = :ios, '10.0'
    s.requires_arc        = true
    s.static_framework    = true
    s.swift_version       = '5.0'

    s.subspec 'Core' do |c|
    c.frameworks = 'UIKit'
    c.source_files = 'Classes/*.{swift,h,m}'
    c.resources = ['Resources/*.{storyboard,xib,png,plist}']
    c.dependency 'ZappPlugins'
    c.dependency 'ApplicasterSDK'
  end

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1'
                }

  s.default_subspec = 'Core'

end
