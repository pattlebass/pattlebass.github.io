# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "pattlebass-blog-theme"
  spec.version       = "0.2.0"
  spec.authors       = ["pattlebass"]
  spec.email         = ["49322676+pattlebass@users.noreply.github.com"]

  spec.summary       = "A theme for my website."
  spec.homepage      = "pattlebass.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
end
