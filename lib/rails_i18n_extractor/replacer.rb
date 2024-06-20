# lib/rails_i18n_extractor/replacer.rb

# frozen_string_literal: true

require "parser/current"
require "unparser"

module RailsI18nExtractor
  # Replacer class
  class Replacer
    def replace_strings(node)
      new_source = process_node(node)
      Unparser.unparse(new_source)
    end
  end
end
ee