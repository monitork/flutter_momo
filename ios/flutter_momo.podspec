#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_momo.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_momo'
  s.version          = '0.0.1'
  s.summary          = 'This plugin make MoMo payment method into your app.'
  s.description      = <<-DESC
This plugin make MoMo payment method into your app.
                       DESC
  s.homepage         = 'https://github.com/monitork/flutter_momo'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Monitor K' => 'admin@monitork.com' }
  s.source           = { :path => '.' }
  s.source       = { :git => "https://github.com/momo-wallet/mobile-sdk.git", :branch => "release_swift" }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
