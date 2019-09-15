require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
version = package['version']

Pod::Spec.new do |s|
  s.name                   = 'react-native-admob'
  s.version                = version
  s.summary                = 'A react-native component for Google AdMob banners'
  s.homepage               = 'https://github.com/sbugert/react-native-admob'
  s.license                = package['license']
  s.author                 = 'Simon Bugert <simon.bugert@gmail.com>, Koen Punt <koen@koenpunt.nl>'
  s.platforms              = { :ios => '9.0', :tvos => '9.2' }
  s.source                 = { :git => 'https://github.com/sbugert/react-native-admob.git', :tag => "v#{version}" }
  s.source_files           = 'ios/*.{h,m}'

  s.dependency 'Google-Mobile-Ads-SDK'
  s.dependency 'React-Core'
end
