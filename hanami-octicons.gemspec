
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hanami/octicons/version"

Gem::Specification.new do |spec|
  spec.name          = "hanami-octicons"
  spec.version       = Hanami::Octicons::VERSION
  spec.authors       = ["Marius Bobin"]
  spec.email         = ["bobin.marius@gmail.com"]

  spec.summary       = %q{Hanami wrapper for GitHub's Octicons.}
  spec.description   = %q{Hanami wrapper for GitHub's Octicons.}
  spec.homepage      = "https://github.com/mbobin/hanami-octicons"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "octicons", "~> 5.2"
  spec.add_dependency "hanami-helpers", "~> 1.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "simplecov"
end
