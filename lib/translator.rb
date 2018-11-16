# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  library = YAML.load_file(file_path)
  result = {"get_meaning": {}, "get_emoticon": {}}
  library.each do |word, symbol|
    result["get_meaning"][symbol[1]] = word
    result["get_emoticon"][symbol[0]] = symbol[1]
  end
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end