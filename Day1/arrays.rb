arr = []
cities = ["New York", "Chicago", "Toronto", "Chantilly"]

number_of_cities = cities.length
puts "Number of cities is #{number_of_cities}"
#puts cities[0]

puts "**Using a For Loop**"
for i in 0..number_of_cities-1
	puts "Index: #{i} Value: #{cities[i]}"
end

puts ""
cities[4] = "San Francisco"

puts "**Using a For-Each Loop**"
for city in cities
	puts city
end

puts ""
cities[cities.length] = "Dallas"

puts "**Using the Iterator**"
cities.each do | city_name |
	puts city_name
end

puts ""
cities[cities.length] = "Minneapolis"

puts "**Using the Iterator with Index**"
cities.each.with_index do | city_name, i |
	puts "City #{i+1}: #{city_name}"
end
