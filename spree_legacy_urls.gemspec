# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_legacy_urls'
  s.version     = '1.0.0'
  s.summary     = 'Add support for legacy URLs'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Chris Cummigns'
  s.email             = 'chris@chriscummings.net'
  s.homepage          = 'http://www.chriscummings.net'

  s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.0.0'

  # s.add_development_dependency 'capybara', '1.0.1'
  # s.add_development_dependency 'factory_girl'
  # s.add_development_dependency 'ffaker'
  # s.add_development_dependency 'rspec-rails',  '~> 2.7'
  # s.add_development_dependency 'sqlite3'
end
