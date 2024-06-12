# frozen_string_literal: true

require "thor"
require "rails_i18n_extractor/extractor"

module RailsI18nExtractor
  # CLI class
  class CLI < Thor
    desc "extract", "Extract static strings and convert to I18n methods"
    def extract
      Extractor.new.extract_strings
    end
  end
end
