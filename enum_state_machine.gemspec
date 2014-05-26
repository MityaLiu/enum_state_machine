$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'enum_state_machine/version'

Gem::Specification.new do |s|
  s.name              = "enum_state_machine"
  s.version           = EnumStateMachine::VERSION
  s.authors           = ["The HornsAndHooves Team"]
  s.email             = ["arthur.shagall@gmail.com"]
  s.homepage          = "https://github.com/HornsAndHooves/enum_state_machine"
  s.description       = "Adds support for creating enum  state machines for attributes on any Ruby class"
  s.summary           = "Enum State machines for attributes"
  s.require_paths     = ["lib"]
  ignores             = File.read(".gitignore").split.map {|i| i.sub(/\/$/, "/*").sub(/^[^\/]/, "**/\\0")}
  s.files             = (Dir[".*"] + Dir["**/*"]).select {|f| File.file?(f) && !ignores.any? {|i| File.fnmatch(i, "/#{f}")}}
  s.test_files        = s.files.grep(/^test\//)
  s.rdoc_options      = %w(--line-numbers --inline-source --title enum_state_machine --main README.md)
  s.extra_rdoc_files  = %w(README.md CHANGELOG.md LICENSE)
  s.license           = 'MIT'


  s.add_dependency "sqlite3", "~> 1.3.9"
  s.add_dependency "activemodel", "~> 4.0.5"
  s.add_dependency "activerecord", "~> 4.0.5"
  s.add_dependency "activerecord-deprecated_finders", "~> 1.0.3"
  s.add_dependency "protected_attributes", "~> 1.0.7"
  s.add_dependency "rails-observers", "~> 0.1.2"
  s.add_dependency "power_enum", "~> 2.7"
  s.add_dependency "ruby-graphviz", "~> 1.0.9"
  
  s.add_development_dependency "rake"
  s.add_development_dependency "minitest", "~> 4.7.5"
  s.add_development_dependency "simplecov"
end
