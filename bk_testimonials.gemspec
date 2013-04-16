$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bk_testimonials/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bk_testimonials"
  s.version     = BkTestimonials::VERSION
  s.authors     = ["Josh Horner"]
  s.email       = ["josh@bkmediagroup.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BkTestimonials."
  s.description = "TODO: Description of BkTestimonials."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "generic_admin"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
