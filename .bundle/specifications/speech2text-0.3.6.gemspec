# -*- encoding: utf-8 -*-
# stub: speech2text 0.3.6 ruby lib

Gem::Specification.new do |s|
  s.name = "speech2text"
  s.version = "0.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Todd A. Fisher"]
  s.date = "2012-10-07"
  s.description = "Super powers of Google wrapped in a nice Ruby interface"
  s.email = "todd.fisher@gmail.com"
  s.executables = ["speech2text"]
  s.files = ["bin/speech2text"]
  s.homepage = "https://github.com/taf2/speech2text"
  s.rubygems_version = "2.4.3"
  s.summary = "Speech to Text Library"

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<curb>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<curb>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<curb>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end
