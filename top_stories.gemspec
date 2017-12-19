
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "top_stories/version"

Gem::Specification.new do |spec|
  spec.name          = "top_stories"
  spec.version       = TopStories::VERSION
  spec.authors       = ["'Dani Schuhman'"]
  spec.email         = ["'dani8439@aol.com'"]

  spec.summary       = %q{Top Stories}
  spec.description   = %q{A Ruby Gem that lists the top stories currently up on Pajiba}
  spec.homepage      = "https://learn.co"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
