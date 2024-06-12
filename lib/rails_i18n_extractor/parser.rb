# frozen_string_literal: true

require "parser/current"

module RailsI18nExtractor
  # Parser class
  class Parser
    def parse_file(file_path)
      buffer = ::Parser::Source::Buffer.new(file_path)
      buffer.source = File.read(file_path)
      parser = ::Parser::CurrentRuby.new
      parser.parse(buffer)
    end
  end
end
