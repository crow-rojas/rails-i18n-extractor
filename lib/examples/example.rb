# frozen_string_literal: true

# Example class
class Example
  def greeting
    puts "Hello, World!"
  end

  def farewell
    puts "Goodbye, World!"
  end

  def custom_message(name)
    puts "Hello, #{name}!"
  end
end

example = Example.new
example.greeting
example.farewell
example.custom_message("Alice")
