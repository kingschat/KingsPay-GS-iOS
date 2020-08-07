Pod::Spec.new do |s|
    s.name         = "MyFramework"
    s.version      = "0.1.0"
    s.summary      = "A brief description of MyFramework project."
    s.description  = <<-DESC
    An extended description of MyFramework project.
    DESC
    s.homepage     = "http://your.homepage/here"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
    s.author             = { "Damian Kolasinski" => "damian.kolasinski@appunite.com" }
    s.source       = { :git => "/Users/damian/MyFrameworkDistribution.git", :tag => "#{s.version}" }
    s.public_header_files = "MyFramework.framework/Headers/*.h"
    s.source_files = "MyFramework.framework/Headers/*.h"
    s.vendored_frameworks = "MyFramework.framework"
    s.platform = :ios
    s.swift_version = "4.2"
    s.ios.deployment_target  = '12.0'
end
