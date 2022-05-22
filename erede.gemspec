lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'erede/version'

Gem::Specification.new do |spec|
  spec.name                        = 'erede-ruby-sdk'
  spec.version                     = Erede::VERSION
  spec.authors                     = ['Rede']
  spec.email                       = ['neto.joaobatista@gmail.com']
  spec.summary                     = 'SDK eRede'
  spec.description                 = 'SDK de integração eRede'
  spec.homepage                    = 'https://github.com/pedrofurtado/erede-ruby-sdk'
  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri']   = spec.homepage
  spec.license                     = 'MIT'

  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/})}
  end

  spec.require_paths = ['lib']
  spec.add_dependency 'bundler'
  spec.add_dependency 'json'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
