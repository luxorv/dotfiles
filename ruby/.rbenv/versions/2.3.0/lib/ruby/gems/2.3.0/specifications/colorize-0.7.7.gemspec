# -*- encoding: utf-8 -*-
# stub: colorize 0.7.7 ruby lib

Gem::Specification.new do |s|
  s.name = "colorize".freeze
  s.version = "0.7.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Micha\u{142} Kalbarczyk".freeze]
  s.date = "2015-04-19"
  s.description = "Ruby String class extension. Adds methods to set text color, background color and, text effects on ruby console and command line output, using ANSI escape sequences.".freeze
  s.email = "fazibear@gmail.com".freeze
  s.homepage = "http://github.com/fazibear/colorize".freeze
  s.licenses = ["GPL-2".freeze]
  s.rubygems_version = "2.6.3".freeze
  s.summary = "Add color methods to String class".freeze

  s.installed_by_version = "2.6.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.4"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.4"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.4"])
  end
end
