Pod::Spec.new do |s|
  s.name  = "SMaxFirebaseAnalytics"
  s.version = '0.0.5'
  s.platform  = :ios, '10.0'
  s.summary = '[SportsMax]: Google free, deep, and broadly integrated analytics system designed specifically for mobile.'
  s.description = '[SportsMax]: Google free, deep, and broadly integrated analytics system designed specifically for mobile.'
  s.homepage = 'https://github.com/Digicel-Sportsmax/SMaxFirebaseAnalytics.git'
  s.license = 'CMPS'
  s.author = { "Mohieddine Zarif" => "mohieddine.zarif@gotocme.com" }
  s.source = { :git => 'git@github.com:Digicel-Sportsmax/SMaxFirebaseAnalytics.git', :tag => s.version.to_s }
  s.requires_arc = true
  s.static_framework = true

  s.public_header_files = '**/*.h'
  s.source_files = 'Classes/*.{swift,h,m}', '"${PODS_ROOT}"/Firebase/**/*.{h}'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                          'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/Firebase/**',
                          'OTHER_LDFLAGS' => '$(inherited) -objc -framework "FirebaseCore" -framework "FirebaseInstanceID" -framework "FirebaseAnalytics"',
                          'ENABLE_BITCODE' => 'YES',
                          'SWIFT_VERSION' => '5.1',
                          'USER_HEADER_SEARCH_PATHS' => '"$(inherited)" "${PODS_ROOT}"/Firebase/**'
              }

  s.dependency 'ZappAnalyticsPluginsSDK'
  s.dependency 'Firebase'
  s.dependency 'Firebase/Analytics'
end
