class Example
  def greeting
    puts(t("translation_key.hello_world"))
  end

  def farewell
    puts(t("translation_key.goodbye_world"))
  end

  def custom_message(name)
    puts("#{}#{name}#{}")
  end
end
example = Example.new
example.greeting
example.farewell
example.custom_message(t("translation_key.alice"))
