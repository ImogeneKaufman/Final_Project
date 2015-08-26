# -*- encoding: utf-8 -*-
# stub: resource_accessor 1.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "resource_accessor"
  s.version = "1.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alexander Shvets"]
  s.date = "2014-11-12"
  s.description = "This library is used to simplify access to protected or unprotected http resource"
  s.email = "alexander.shvets@gmail.com"
  s.homepage = "http://github.com/shvets/resource_accessor"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.3"
  s.summary = "This library is used to simplify access to protected or unprotected http resource"

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<gemspec_deps_gen>, [">= 0"])
      s.add_development_dependency(%q<gemcutter>, [">= 0"])
    else
      s.add_dependency(%q<gemspec_deps_gen>, [">= 0"])
      s.add_dependency(%q<gemcutter>, [">= 0"])
    end
  else
    s.add_dependency(%q<gemspec_deps_gen>, [">= 0"])
    s.add_dependency(%q<gemcutter>, [">= 0"])
  end
end
