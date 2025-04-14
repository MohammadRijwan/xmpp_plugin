Pod::Spec.new do |s|
  s.name             = 'xmpp_plugin_fork'
  s.version          = '2.2.15'
  s.summary          = 'Fork of xmpp_plugin with bug fixes and stability improvements.'
  s.description      = <<-DESC
A fork of the original xmpp_plugin for Flutter. Includes fixes and improvements for production use.
                       DESC
  s.homepage         = 'https://github.com/88888888oleg/xmpp_plugin_fork'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Name' => 'olegstepanchenko@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency       'Flutter'
  s.dependency       'XMPPFramework/Swift'
  s.platform         = :ios, '11.0'

  # Flutter.framework does not contain an i386 slice.
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }

  s.swift_version = '5.0'
end