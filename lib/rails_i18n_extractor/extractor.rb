# frozen_string_literal: true

require_relative "parser"
require_relative "replacer"

module RailsI18nExtractor
  # Extractor class
  class Extractor
    def initialize
      @parser = Parser.new
      @replacer = Replacer.new
    end

    def extract_strings(path)
      if File.directory?(path)
        Dir.glob("#{path}/**/*.rb").each do |file|
          process_file(file)
        end
      elsif File.file?(path)
        process_file(path)
      else
        puts "Invalid path: #{path}"
      end
    end

    private

    def process_file(file)
      ast = @parser.parse_file(file)
      return if ast.nil?

      new_source = @replacer.replace_strings(ast)
      File.write(file, new_source)
      puts "Processed file: #{file}"
    end
  end
end
