# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday/patron/version'

Gem::Specification.new do |spec|
  spec.name          = 'faraday-patron'
  spec.version       = Faraday::Patron::VERSION
  spec.authors       = ['Julik Tarkhanov']
  spec.email         = ['me@julik.nl']

  spec.summary       = 'Faraday Adapter for Patron'
  spec.description   = 'Faraday Adapter for Patron'
  spec.homepage      = 'https://github.com/julik/faraday-patron'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.5'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/julik/faraday-patron'
  spec.metadata['changelog_uri'] = 'https://github.com/julik/faraday-patron/releases'

  spec.files = Dir.glob('lib/**/*') + %w[README.md LICENSE]
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 1.0'
  spec.add_dependency 'patron', '~> 0.12'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'webmock', '~> 3.4'
end
