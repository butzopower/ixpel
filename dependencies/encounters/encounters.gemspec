$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "encounters/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "encounters"
  s.version     = Encounters::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Encounters."
  s.description = "TODO: Description of Encounters."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
