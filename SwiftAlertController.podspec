# After the sample of: 
# https://github.com/thellimist/EZPods

Pod::Spec.new do |s|
s.name             = "SwiftAlertController"
s.version          = "0.1.0"
s.summary          = "Nice and easy UIAlertController extensions"
s.homepage         = "https://github.com/zahlz/SwiftAlertController"
s.license          = 'BSD'
s.author           = { "moogle19" => "mail@kseidel.org" }
s.source           = { :git => "https://github.com/zahlz/SwiftAlertController.git", :tag => s.version.to_s }
s.platform     = :ios, '8.0'
s.requires_arc = true
s.source_files = 'SwiftAlertController.swift'

end
