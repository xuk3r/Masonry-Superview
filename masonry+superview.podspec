Pod::Spec.new do |s|
s.name         = "Masonry+Superview" # 项目名称
s.version      = "0.0.1"        # 版本号 与 你仓库的 标签号 对应
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.summary      = "masonry+superview" # 项目简介

s.homepage     = "https://github.com/xuk3r/masonry-superview" # 仓库的主页
s.source       = { :git => "https://github.com/xuk3r/masonry-superview.git", :tag => "#{s.version}" }
s.source_files = "*.{h,m,swift}"
s.requires_arc = true # 是否启用ARC
s.platform     = :ios, "10.0" #平台及支持的最低版本
s.dependency    "Masonry" # 依赖库
# s.frameworks   = "UIKit", "Foundation" #支持的框架
s.author             = { "xuk3r" => "a4101823@126.com" }
s.social_media_url   = "https://github.com/xuk3r"

end
