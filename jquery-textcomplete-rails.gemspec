lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'jquery/textcomplete/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery-textcomplete-rails"
  spec.version       = Jquery::Textcomplete::Rails::VERSION
  spec.authors       = ['Samuel Molnar']
  spec.email         = ['molnar.samuel@gmail.com']
  spec.description   = 'Provides jQuery Textcomplete for Rails Asset Pipeline'
  spec.summary       = 'Provides jQuery Textcomplete for Rails Asset Pipeline'
  spec.homepage      = 'https://github.com/smolnar/jquery-textcomplete-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'railties',     '>= 3.2.0'
  spec.add_dependency 'sass-rails',   '>= 3.2.0'
  spec.add_dependency 'coffee-rails', '>= 3.2.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
