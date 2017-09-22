=begin
#variables
name = "Tim"
age = 30

#printing
puts name
puts age

sum = 5+10
print "Sum: "
puts sum

num1 = 20
num2 = 30
puts num1 * num2

=end

def choose_clothes(temperature, sun_condition)
	if (temperature > 80)
		puts "Wear shorts and t-shirt"
	elsif (temperature > 60)
		puts "Wear pants and long-sleeve shirt"
		if (sun_condition)
			puts "Wear a hat"
		elsif (!sun_condition)
			puts "Bring an umbrella"
		end
	else
		puts "Wear pants and sweater"
	end
end


#print "Enter your name: "
#your_name = gets.chomp

#puts "Hi #{your_name}!"

#print "What is the temperature? "
#temperature = gets.chomp.to_i
#sun_condition = false

choose_clothes(65, false)