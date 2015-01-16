# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'narrable/version'

Gem::Specification.new do |spec|
  spec.name          = "narrable"
  spec.version       = Narrable::VERSION
  spec.authors       = ["Alexander E. Dimitriyadi"]
  spec.email         = ["alex@heuretix.com"]
  spec.summary       = %q{A framework to build scalable web services.}
  spec.description   = %q{A ruby framework inspired by Command-Query Responsibility Separation and Event Sourcing designed with the goal to enable developers to build web services that scale more simply.}
  spec.homepage      = "http://www.github.com/adimitri/narrable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
