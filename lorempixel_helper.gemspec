# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lorempixel_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "lorempixel_helper"
  spec.version       = LorempixelHelper::VERSION
  spec.authors       = ["Prabu D"]
  spec.email         = ["prabud@spritle.com"]
  spec.description   = %q{A Rails view images via http://lorempixel.com}
  spec.summary       = %q{A Rails view helper place an images via http://lorempixel.com}
  spec.homepage      = "https://github.com/spritlesoftware/lorempixel_helper"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec"
end
