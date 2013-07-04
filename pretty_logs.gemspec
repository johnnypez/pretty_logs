# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pretty_logs/version'

Gem::Specification.new do |spec|
  spec.name          = "pretty_logs"
  spec.version       = PrettyLogs::VERSION
  spec.authors       = ["John Butler"]
  spec.email         = ["johnnypez@gmail.com"]
  spec.description   = %q{Formats Rails logs with severity and color}
  spec.summary       = %q{Formats Rails logs with severity and color}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
