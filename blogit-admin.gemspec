$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blogit/admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blogit-admin"
  s.version     = Blogit::Admin::VERSION
  s.authors     = ["Bodacious"]
  s.email       = ["gavin@katanacode.com"]
  s.homepage    = "http://blogit.katanacode.com"
  s.summary     = "A mountable admin engine for the blogit Rails gem"
  s.description = "Add a blog to your Rails application in minutes with this mountable" \
                   "Rails Engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]
  

  # s.add_dependency "blogit", "~> 1.0.0"
  s.add_dependency "epic-editor-rails"

  s.add_development_dependency 'rails', '>= 4.2.0'
  s.add_development_dependency 'thor'

  # Debugging
  s.add_development_dependency "pry"
  
  s.add_development_dependency "spring"
  
  s.add_development_dependency "sass-rails"
  s.add_development_dependency "sass-globbing"
  s.add_development_dependency "autoprefixer-rails"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "therubyracer"
  # Databases
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "mysql2"
  s.add_development_dependency "pg"

  # Testing
  s.add_development_dependency "rspec-rails"#, '~> 2.0'
  s.add_development_dependency "rb-fsevent",  ">= 0.9.1" # OS X
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "growl"
  s.add_development_dependency "factory_girl", ">=4.1.0"
  s.add_development_dependency "mocha"

end
