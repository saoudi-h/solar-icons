# frozen_string_literal: true

require_relative "lib/solar_icons/version"

Gem::Specification.new do |spec|
  spec.name = "solar_icons"
  spec.version = SolarIcons::VERSION
  spec.authors = ["Hakim Saoudi"]
  spec.summary = "Solar Icons for Ruby on Rails views"
  spec.description = "Inline Solar icons in Rails views through the solar_icon helper, generated from the maintained catalogue."
  spec.homepage = "https://solar-icons.vercel.app/docs/v2/packages/rails"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/saoudi-h/solar-icons"
  spec.metadata["changelog_uri"] = "https://github.com/saoudi-h/solar-icons/blob/main/packages/rails/CHANGELOG.md"
  spec.files = Dir["lib/**/*", "README.md", "CHANGELOG.md", "MIT-LICENSE"]
  spec.require_paths = ["lib"]
  spec.add_dependency "activesupport", ">= 7.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
