require "yaml"

def load_library (path)
  dictionary = YAML.load_file(path)
  result = {
  :get_meaning => {},
  #keys inside get_meaning are japanese emoticons that point to their meanings
  :get_emoticon => {}
  #keys inside :get_emoticon are english emoticons pointing to their japenese equivalents
  }
  dictionary.each do |meaning, emoticons|
    result[:get_meaning][emoticons[1]] = meaning
    result[:get_emoticon][emoticons[0]] = emoticons[1]
  end
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end