dictionary = {
  "chicago" => "773",
  "st. louis" => "314",
  "evanston" => "847",
  "uptown" => "312",
  "glenview" => "224",
  "maplewood" => "636",
  "kansas city" => "816",
  "maryville" => "660",
  "aurora" => "630",
  "south chicago" => "872",
  "chicago heights" => "708",
}

def get_city_names(dictionary)
  puts dictionary.keys
end

def get_area_code(dictionary, key)
  dictionary[key]
end

def prompt(hash)
  puts "Type the city to view their area code:  "
  get_city_names(hash)
  city = gets.chomp
  if hash.include?(city)
    puts get_area_code(hash, city)
  else
    puts "Not a valid city..."
  end
end

puts "Welcome to the Area Code dictionary"
25.times { print "-" }
puts

loop do
  prompt(dictionary)
  puts "Press n to search for another area code. Press any other key to exit"
  input = gets.chomp.downcase
  break if input != "n"
end
