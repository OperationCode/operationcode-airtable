# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'operationcode/airtable/version'


Gem::Specification.new do |spec|
  spec.name          = 'operationcode-airtable'
  spec.version       = Operationcode::Airtable::VERSION
  spec.authors       = ['RickR']
  spec.email         = ['rick@operationcode.org']

  spec.summary       = %q{A simple reusable wrapper around the airtable API customized for Operation Code}
  spec.description   = %q{This gem is meant to be used by operation code ruby apps that wish to write to our airtable instance}
  spec.homepage      = 'https://github.com/OperationCode/operationcode-airtable'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.1'
  spec.add_development_dependency 'mocha'
  spec.add_dependency 'airtable'
  spec.add_dependency 'activesupport'
end
