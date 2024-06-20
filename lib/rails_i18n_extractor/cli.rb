# frozen_string_literal: true

require "thor"
require "rails_i18n_extractor/extractor"

module RailsI18nExtractor
  # CLI class
  class CLI < Thor
    desc "extract PATH", "Extract static strings from the given file or directory and convert them to I18n methods"
    def extract(path)
      extractor = Extractor.new
      extractor.extract_strings(path)
    end

    def self.exit_on_failure?
      true
    end
  end
end
