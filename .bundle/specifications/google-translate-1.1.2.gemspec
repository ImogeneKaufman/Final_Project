# -*- encoding: utf-8 -*-
# stub: google-translate 1.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "google-translate"
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alexander Shvets"]
  s.date = "2014-12-19"
  s.description = "Simple client for Google Translate API."
  s.email = "alexander.shvets@gmail.com"
  s.executables = ["translate", "t"]
  s.files = ["bin/t", "bin/translate"]
  s.homepage = "http://github.com/shvets/google-translate"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.3"
  s.summary = "Summary: Simple client for Google Translate API."

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json_pure>, ["~> 1.8"])
      s.add_runtime_dependency(%q<resource_accessor>, ["~> 1.2"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.19"])
      s.add_development_dependency(%q<gemspec_deps_gen>, ["~> 1.1"])
      s.add_development_dependency(%q<gemcutter>, ["~> 0.7"])
    else
      s.add_dependency(%q<json_pure>, ["~> 1.8"])
      s.add_dependency(%q<resource_accessor>, ["~> 1.2"])
      s.add_dependency(%q<thor>, ["~> 0.19"])
      s.add_dependency(%q<gemspec_deps_gen>, ["~> 1.1"])
      s.add_dependency(%q<gemcutter>, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<json_pure>, ["~> 1.8"])
    s.add_dependency(%q<resource_accessor>, ["~> 1.2"])
    s.add_dependency(%q<thor>, ["~> 0.19"])
    s.add_dependency(%q<gemspec_deps_gen>, ["~> 1.1"])
    s.add_dependency(%q<gemcutter>, ["~> 0.7"])
  end
end
