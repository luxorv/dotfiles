# -*- encoding: utf-8 -*-
# stub: synx 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "synx".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mark Larsen".freeze]
  s.date = "2016-02-04"
  s.description = "                       A command-line tool that reorganizes your Xcode project folder to match your Xcode groups\n                       Synx parses your .xcodeproj to build the same group structure out on the file system.\n".freeze
  s.email = ["mark@venmo.com".freeze]
  s.executables = ["synx".freeze]
  s.files = ["bin/synx".freeze]
  s.homepage = "https://github.com/venmo/synx".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.3".freeze
  s.summary = "A command-line tool that reorganizes your Xcode project folder to match your Xcode groups".freeze

  s.installed_by_version = "2.6.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.3"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.14"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<clamp>.freeze, ["~> 0.6"])
      s.add_runtime_dependency(%q<colorize>.freeze, ["~> 0.7"])
      s.add_runtime_dependency(%q<xcodeproj>.freeze, ["~> 0.28.2"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.3"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.14"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.9"])
      s.add_dependency(%q<clamp>.freeze, ["~> 0.6"])
      s.add_dependency(%q<colorize>.freeze, ["~> 0.7"])
      s.add_dependency(%q<xcodeproj>.freeze, ["~> 0.28.2"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.14"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.9"])
    s.add_dependency(%q<clamp>.freeze, ["~> 0.6"])
    s.add_dependency(%q<colorize>.freeze, ["~> 0.7"])
    s.add_dependency(%q<xcodeproj>.freeze, ["~> 0.28.2"])
  end
end
