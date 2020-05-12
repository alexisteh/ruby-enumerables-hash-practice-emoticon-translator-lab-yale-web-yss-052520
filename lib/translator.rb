# require modules here
require 'yaml'
require 'pry'

def load_library(filepath) 
  nh = YAML.load_file(filepath) 
  new = {}
  nh.each do |key,val| 
    new[key] = { :english => val[0], :japanese => val[1] }
  end 
  puts new
  new 
end

load_library("lib/emoticons.yml")


def get_english_meaning(filepath, emo)
  hash = load_library(filepath) 
  hash.each do |key,val| 
    if val[:japanese] == emo 
      return key 
    end 
  end 
  return "Sorry, that emoticon was not found"
end

get_english_meaning("./lib/emoticons.yml", "(Ｔ▽Ｔ)")

def get_japanese_emoticon(filepath,west) 
  hash.find 
end 

