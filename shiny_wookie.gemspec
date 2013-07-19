# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shiny_wookie/version'

Gem::Specification.new do |spec|
  spec.name                  = "shiny_wookie"
  spec.version               = ShinyWookie::VERSION
  spec.authors               = ["Kristof Vannotten"]
  spec.email                 = ["kristof@vannotten.be"]
  spec.description           = %q{A gem that generates random documents}
  spec.summary               = %q{This gem creates a specified amount documents, containing randomly generated text}
  spec.homepage              = "https://github.com/kvannotten/shiny_wookie"
  spec.license               = "MIT"
                     
  spec.files                 = `git ls-files`.split($/)
  spec.executables           = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files            = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths         = ["lib"]
  spec.required_ruby_version = '>= 1.9'

  # development dependencies
  {"bundler" => "~> 1.3", "rake" => "> 0", "rspec" => "> 0", "simplecov" => "> 0"}.each do |gem_name, gem_version|
    spec.add_development_dependency gem_name, gem_version
  end
  
  # runtime dependencies
  ["gabbler"].each do |gem_name|
    spec.add_dependency gem_name
  end
end
