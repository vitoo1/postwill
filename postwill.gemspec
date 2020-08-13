$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'postwill/version'

Gem::Specification.new do |spec|
  spec.name          = 'postwill-jb'
  spec.version       = Postwill::VERSION
  spec.authors       = ['Kirill Shevchenko', 'Bezrukavyi Yaroslav']
  spec.email         = ['hello@kirillshevch.com', 'yaroslav.bezrukavyi@gmail.com']

  spec.summary       = 'Posting to the most popular social media'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/postwill/postwill'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'dry-configurable', '~> 0.7'
  spec.add_dependency 'dry-monads', '~> 0.3.1'
  spec.add_dependency 'twitter', '~> 6.2'
  spec.add_dependency 'koala', '~> 3.0.0'
  spec.add_dependency 'pinterest-api', '~> 0.4.0'
  spec.add_dependency 'instagram_upload', '~> 0.1.2'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.6.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.5.0'
  spec.add_development_dependency 'rubocop', '~> 0.50.0'
  spec.add_development_dependency 'vcr', '~> 3.0.3'
  spec.add_development_dependency 'webmock', '~> 3.0.1'
  spec.add_development_dependency 'ffaker', '~> 2.7'
end
