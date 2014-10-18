$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "referrari/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "referrari"
  s.version     = Referrari::VERSION
  s.authors       = ["Joe Kratzat","Bob Mattax"]
  s.email         = ["joe@fox.io","bob@fox.io"]
  s.homepage    = ""
  s.summary     = "A Gem"
  s.description = "It does nothing ... yet"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  # s.test_files = Dir["test/**/*"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "activesupport", ">= 3.1.0"
  s.add_development_dependency 'rspec-rails', '~> 3.0.0'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
end
