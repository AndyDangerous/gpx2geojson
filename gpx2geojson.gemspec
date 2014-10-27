# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gpx2geojson/version'

Gem::Specification.new do |spec|
  spec.name          = "gpx2geojson"
  spec.version       = Gpx2geojson::VERSION
  spec.authors       = ["Andy Mention"]
  spec.email         = ["amention@gmail.com"]
  spec.summary       = %q{A simple tool for converting GPX files into GeoJSON.}
  spec.description   = %q{Convert GPX to GeoJSON}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri", "~>1.6"
end
