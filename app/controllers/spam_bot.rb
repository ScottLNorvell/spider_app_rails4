require 'httparty'
require 'pry'

puts 'url'
url = gets.chomp

doc = HTTParty.get(url)

emails = doc.scan(/\w@\w+.\w{2,}/)

binding.pry


# HTTParty.get(url)