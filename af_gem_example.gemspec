# frozen_string_literal: true

require_relative 'lib/gem_example/version'

Gem::Specification.new do |spec|
  spec.name          = 'af_gem_example'
  spec.version       = GemExample::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.author        = 'Nicholas Lee'
  spec.email         = 'nicholas.lee@appfolio.com'
  spec.description   = 'An example gem'
  spec.summary       = spec.description
  spec.homepage      = 'http://github.com/maimer/gem_example'
  spec.license       = 'MIT'
  spec.files         = Dir['**/*'].select { |f| f[%r{^(lib/|Gemfile$|Rakefile|README.md|.*gemspec)}] }
  spec.require_paths = ['lib']
end
