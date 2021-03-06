# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sorted/mongoid/version'

Gem::Specification.new do |spec|
  spec.name          = "sorted-mongoid"
  spec.version       = Sorted::Mongoid::VERSION
  spec.authors       = ["Daniel Leavitt"]
  spec.email         = ["daniel.leavitt@gmail.com"]
  spec.summary       = %q{Adds Mongoid support to the "sorted" gem.}
  spec.description   = %q{Adds Mongoid support to the "sorted" gem. Allows you to sort large (Mongoid) datasets over many pages, without losing state.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", ">= 2.0.0"

  spec.add_dependency 'activesupport', '>= 3.0.0'
  spec.add_dependency "sorted", "~> 0.4.3"
  spec.add_dependency "mongoid", ">= 3.0"
end
