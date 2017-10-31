# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'witt/version'

Gem::Specification.new do |spec|
  spec.name          = "witt"
  spec.version       = Witt::VERSION
  spec.authors       = ["Pedro Vereza"]
  spec.email         = ["pdrvereza@gmail.com"]

  spec.summary       = "What Is The Time - Ruby world clock on your terminal"
  spec.description   = "Quickly check current time in different timezones without leaving your beloved terminal."
  spec.homepage      = "https://github.com/pedrovereza/witt"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(bin/witt README.md LICENSE.txt)
  spec.require_paths = ["lib"]
  spec.executables   = ["witt"]

  spec.add_runtime_dependency "tzinfo", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
