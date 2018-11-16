# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  library = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticon|
    result["get_meaning"][emoticon[1]] = meaning
    result["get_emoticon"][emoticon[0]] = emoticon[1]
   end
  result
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  library["get_emoticon"].each do |eng, jpn|
    if jpn == emoticon
      return eng
    end
  end
end

def get_english_meaning
  # code goes here
end