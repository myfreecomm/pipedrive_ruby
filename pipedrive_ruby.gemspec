# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pipedrive_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "pipedrive_ruby"
  spec.version       = PipedriveRuby::VERSION
  spec.authors       = ["Felipe Borges Ferreira"]
  spec.email         = ["lypborges@gmail.com"]

  spec.summary       = %q{Wrapper for Pipedrive API call.}
  spec.description   = %q{Gem for use Pipedrive API for multiple tokens.}
  spec.homepage      = "https://github.com/lypborges/pipedrive_ruby"
  spec.license       = "MIT"

  spec.has_rdoc      = 'yard'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "http", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.1"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "dotenv", "~> 2.1"
  spec.add_development_dependency "byebug", "~> 9.0"
  spec.add_development_dependency "codeclimate-test-reporter", "~>0.6"
end
