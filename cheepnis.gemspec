# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cheepnis}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Travers"]
  s.date = %q{2010-11-22}
  s.description = %q{Cheepnis is a small library that makes it easy for Heroku-based applications to spin up worker processes when needed, and shuts them down when they are finished. This gem is Fabrice Armisen's fork}
  s.email = %q{farmisen@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README",
    "README.rdoc"
  ]
  s.files = [
    ".idea/cheepnis.iml",
    ".idea/encodings.xml",
    ".idea/misc.xml",
    ".idea/modules.xml",
    ".idea/vcs.xml",
    "README",
    "VERSION",
    "lib/cheepnis.rb"
  ]
  s.homepage = %q{http://github.com/farmisen/cheepnis}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Small library that makes heroku workers more affordable}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<heroku>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_runtime_dependency(%q<heroku>, [">= 0"])
      s.add_runtime_dependency(%q<delayed_job>, ["~> 2.1"])
    else
      s.add_dependency(%q<heroku>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<heroku>, [">= 0"])
      s.add_dependency(%q<delayed_job>, ["~> 2.1"])
    end
  else
    s.add_dependency(%q<heroku>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<heroku>, [">= 0"])
    s.add_dependency(%q<delayed_job>, ["~> 2.1"])
  end
end

