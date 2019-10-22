#
# Be sure to run `pod lib lint ARMSwiftSuite.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ARMSwiftSuite'
  s.version          = '0.1.1'
  s.summary          = 'Everything that Apple forgot in Swift5 & SwiftUI'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a pod that works for iOS13.0+ to provide developers with quicker ways to do everything that Apple forgot in Swift5 & SwiftUI
                       DESC

  s.homepage         = 'https://github.com/ajaymerchia/ARMSwiftSuite'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ajaymerchia' => 'ajaymerchia@berkeley.edu' }
  s.source           = { :git => 'https://github.com/ajaymerchia/ARMSwiftSuite.git', :tag => s.version.to_s }
	s.swift_version    = '5.0'
	
	s.ios.deployment_target = '13.0'

	s.subspec 'UISuite' do |ui|
		ui.source_files = 'ARMSwiftSuite/Classes/UISuite/*.swift'
#		ui.dependency 'ARMSwiftSuite/Other'
	end
  
  # s.resource_bundles = {
  #   'ARMSwiftSuite' => ['ARMSwiftSuite/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
