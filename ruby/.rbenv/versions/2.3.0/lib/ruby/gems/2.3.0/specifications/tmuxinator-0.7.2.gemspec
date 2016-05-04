# -*- encoding: utf-8 -*-
# stub: tmuxinator 0.7.2 ruby lib

Gem::Specification.new do |s|
  s.name = "tmuxinator"
  s.version = "0.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.23") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Allen Bargi", "Christopher Chow"]
  s.date = "2016-04-01"
  s.description = "Create and manage complex tmux sessions easily."
  s.email = ["allen.bargi@gmail.com", "chris@chowie.net"]
  s.executables = ["mux", "tmuxinator"]
  s.files = ["bin/mux", "bin/tmuxinator"]
  s.homepage = "https://github.com/tmuxinator/tmuxinator"
  s.licenses = ["MIT"]
  s.post_install_message = "\n    __________________________________________________________\n    ..........................................................\n\n    Thank you for installing tmuxinator.\n\n    Make sure that you've set these variables in your ENV:\n\n      $EDITOR, $SHELL\n\n    You can run `tmuxinator doctor` to make sure everything is set.\n    Happy tmuxing with tmuxinator!\n\n    ..........................................................\n    __________________________________________________________\n  "
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.5.1"
  s.summary = "Create and manage complex tmux sessions easily."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0.15.0", "~> 0.19"])
      s.add_runtime_dependency(%q<erubis>, ["~> 2.6"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
    else
      s.add_dependency(%q<thor>, [">= 0.15.0", "~> 0.19"])
      s.add_dependency(%q<erubis>, ["~> 2.6"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0.15.0", "~> 0.19"])
    s.add_dependency(%q<erubis>, ["~> 2.6"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
  end
end
