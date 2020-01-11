require "yaml"

def load_library (path)
  dictionary = YAML.load_file(path)
  lookup = {
  :get_meaning => {},
  #keys inside get_meaning are japanese emoticons that point to their meanings
  :get_emoticon => {}
  #keys inside :get_emoticon are english emoticons pointing to their japenese equivalents
  }
  dictionary.each do |meaning, emoticons|
    lookup[:get_meaning][emoticons[1]] = meaning
    lookup[:get_emoticon][emoticons[0]] = emoticons[1]
  end
  lookup
end

def get_japanese_emoticon(path, english_emoticon)
  load_library(path)
  japanese_emoticon = 
end

def get_english_meaning
  # code goes here
end