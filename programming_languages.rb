require "pry"
def reformat_languages(languages)
  # your code here
  new_list = {}
  languages.each do |key, value|
    value.each do |language, spec|
      if !new_list.has_key?(language)
        new_list[language] = spec
      end
      if new_list[language].has_key?(:style)
        new_list[language][:style] << key
      else
        new_list[language][:style] = [key]
      end
    end
  end
  new_list
end
