require 'thor'
require 'rails_i18n_extractor/extractor'

module MyI18nExtractorGem
  class CLI < Thor
    desc "extract", "Extract static strings and convert to I18n methods"
    def extract
      Extractor.new.extract_strings
    end
  end
end
