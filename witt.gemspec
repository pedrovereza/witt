# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'witt/version'

Gem::Specification.new do |spec|
  spec.name          = "witt"
  spec.version       = Witt::VERSION
  spec.authors       = ["Pedro Vereza"]
  spec.email         = ["pdrvereza@gmail.com"]

  spec.summary       = "Ruby world clock on your terminal"
  spec.description   = "Ruby world clock on your terminal"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir["lib/**/*"] + %w(bin/witt README.md LICENSE)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.executables << "witt"

  spec.add_runtime_dependency "tzinfo", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
