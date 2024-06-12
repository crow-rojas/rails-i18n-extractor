# frozen_string_literal: true

require_relative "lib/rails_i18n_extractor/version"

Gem::Specification.new do |spec|
  spec.name = "rails_i18n_extractor"
  spec.version = RailsI18nExtractor::VERSION
  spec.authors = ["Cristobal Rojas Brito"]
  spec.email = ["cristobal.rojasbrito@gmail.com"]

  spec.summary = "A gem to extract static strings from Rails projects and convert them to I18n methods."
  spec.description = "RailsI18nExtractor helps medium-large Rails projects by extracting " \
             "static strings from Ruby files (.rb) and template files (.html.erb/.erb) " \
             "and converting them into I18n methods, facilitating internationalization."
  spec.homepage = "https://github.com/crow-rojas/rails_i18n_extractor"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/crow-rojas/rails_i18n_extractor"
  spec.metadata["changelog_uri"] = "https://github.com/crow-rojas/rails_i18n_extractor/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "bin"
  spec.executables = ["rails_i18n_extractor"]
  spec.require_paths = ["lib"]

  spec.add_dependency "parser"
  spec.add_dependency "thor"
  spec.add_development_dependency "rspec"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
