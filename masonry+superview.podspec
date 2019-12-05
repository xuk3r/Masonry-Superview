Pod::Spec.new do |s|
s.name         = "masonry+superview"
s.version      = "0.2.0"
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.summary      = "masonry+superview"
s.homepage     = "https://github.com/xuk3r/masonry-superview"
s.source       = { :git => "https://github.com/xuk3r/masonry-superview.git", :tag => "#{s.version}" }
s.source_files = "*.{h,m,swift}"
s.requires_arc = true
s.platform     = :ios, "8.0"
s.dependency    "Masonry"
# s.frameworks   = "UIKit", "Foundation"
s.author             = { "xuk3r" => "a4101823@126.com" }
s.social_media_url   = "https://github.com/xuk3r"
end
