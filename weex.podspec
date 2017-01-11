#
# Be sure to run `pod lib lint weexSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'weex'
  s.version      = "0.9.7"
  s.summary      = "WeexSDK Source ."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        A framework for building Mobile cross-platform UI
                       DESC

  s.homepage         = 'https://github.com/rRun/weexSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hexy' => 'hexy@cdfortis.com' }
  s.source           = { :git => 'https://github.com/rRun/weexSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'

  s.requires_arc = true
  s.source_files = 'weexSDK/Classes/**/*'
  s.xcconfig = { "OTHER_LINK_FLAG" => '$(inherited) -ObjC'}
  s.prefix_header_file = 'weexSDK/Classes/Supporting Files/WeexSDK-Prefix.pch'
  s.resources = 'weexSDK/Assets/main.js', 'weexSDK/Assets/wx_load_error@3x.png'

  # s.public_header_files = 'Pod/Classes/**/*.h'

  s.user_target_xcconfig  = { 'FRAMEWORK_SEARCH_PATHS' => "'$(PODS_ROOT)/WeexSDK'" }
  s.frameworks = 'AVKit','CoreMedia','MediaPlayer','AVFoundation','AVKit','JavaScriptCore'

  s.dependency 'SocketRocket'
end
