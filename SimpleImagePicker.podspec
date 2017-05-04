#
# Be sure to run `pod lib lint SimpleImagePicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SimpleImagePicker'
  s.version          = '1.0.1'
  s.summary          = 'Simple iOS UI component for picker images from photo library or camera'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Simple iOS UI component for picker images from photo library or camera. 
Uses nothing more than native UIAlertController. 
Also handles situations when user doesn't give enough permissions (let's say it doesn't crash) and doesn't show empty screens.
                       DESC

  s.homepage         = 'https://github.com/olejnjak/SimpleImagePicker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'olejnjak' => 'olejnjak@gmail.com' }
  s.source           = { :git => 'https://github.com/olejnjak/SimpleImagePicker.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/olejnjak'

  s.ios.deployment_target = '8.3'

  s.source_files = 'SimpleImagePicker/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SimpleImagePicker' => ['SimpleImagePicker/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
