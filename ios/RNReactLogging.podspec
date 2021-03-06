require 'json'

package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name         = "RNReactLogging"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/philzcoffee/react-native-file-log.git", :tag => "master" }
  s.source_files  = "*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end
