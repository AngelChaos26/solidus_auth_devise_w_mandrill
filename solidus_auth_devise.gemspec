# encoding: UTF-8

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "solidus_auth_devise_w_mandrill"
  s.version     = "1.6.1"
  s.summary     = "Provides authentication and authorization services for use with Solidus by using Devise and CanCan also it integrates mandrill api"
  s.description = s.summary

  s.author       = 'Raul Contreras'
  s.email        = 'rxco.ar@gmail.com'

  s.required_ruby_version = ">= 2.1"
  s.license     = %q{BSD-3}

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = "lib"
  s.requirements << "none"

  solidus_version = [">= 1.0.6", "< 3"]

  s.add_dependency "solidus_core", solidus_version
  s.add_dependency "devise", '~> 4.1'
  s.add_dependency "devise-encryptable", "0.2.0"
  s.add_dependency 'deface', '~> 1.0.0'
  s.add_dependency('mandrill-api')

  s.add_dependency "json"
  s.add_dependency "multi_json"

  s.add_development_dependency "solidus_backend", solidus_version
  s.add_development_dependency "solidus_frontend", solidus_version
  s.add_development_dependency "rspec-rails", "~> 3.3"
  s.add_development_dependency "simplecov", "~> 0.11.2"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "sass-rails"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "shoulda-matchers", "~> 3.1.1"
  s.add_development_dependency "factory_girl", "~> 4.4"
  s.add_development_dependency "capybara", "~> 2.7.1"
  s.add_development_dependency "poltergeist", "~> 1.5"
  s.add_development_dependency "database_cleaner", "~> 1.5.3"
  s.add_development_dependency "capybara-screenshot"
end
