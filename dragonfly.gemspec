# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dragonfly/version'

Gem::Specification.new do |spec|
  spec.name = "dragonfly"
  spec.version = Dragonfly::VERSION
  spec.authors = ["Mark Evans"]
  spec.email = "mark@new-bamboo.co.uk"
  spec.description = "Dragonfly is a framework that enables on-the-fly processing for any content type.\n  It is especially suited to image handling. Its uses range from image thumbnails to standard attachments to on-demand text generation."
  spec.summary = "Ideal gem for handling attachments in Rails, Sinatra and Rack applications."
  spec.homepage = "http://github.com/markevans/dragonfly"
  spec.license = "MIT"
  spec.files = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]

  spec.add_runtime_dependency("rack", [">= 0"])
  spec.add_runtime_dependency("multi_json", ["~> 1.0"])

  spec.add_development_dependency("activemodel", [">= 0"])
  spec.add_development_dependency("couchrest", ["~> 1.0"])
  spec.add_development_dependency("fog", [">= 0"])
  spec.add_development_dependency("mongo", [">= 0"])
  spec.add_development_dependency("pry", [">= 0"])
  spec.add_development_dependency("rack-cache", [">= 0"])
  spec.add_development_dependency("rspec", ["~> 2.5"])
  spec.add_development_dependency("webmock", [">= 0"])
  if RUBY_PLATFORM == "java"
    spec.add_development_dependency("jruby-openssl", [">= 0"])
  else
    spec.add_development_dependency("bson_ext", [">= 0"])
  end
end

