# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spammy/version'

Gem::Specification.new do |spec|
  spec.name          = 'spammy'
  spec.version       = Spammy::VERSION
  spec.authors       = ['Adham EL-Deeb']
  spec.email         = ['adham.eldeeb90@gmail.com']

  spec.summary       = 'Check text spam percentage.'
  spec.description   = 'Write a longer description or delete this line.'
  spec.homepage      = 'https://github.com/adham90/spammy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
