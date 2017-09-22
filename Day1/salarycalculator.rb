def compute_salary(rate, hours_in_week, weeks_each_year)
	#puts "COMPUTING SALARY NOW"
	return rate * hours_in_week * weeks_each_year
end

def get_bonus
	#6. Ask them if they will receive a bonus
	print "Do you expect to receive a bonus this year (Y/N)? "
	if_bonus = gets.chomp
	bonus=0
	if if_bonus=="Y"
		print "Enter your expected bonus: $"
		bonus = gets.chomp.to_i
	end
	return bonus
end

#1. Enter your name
print "Enter your name: "
name = gets.chomp
puts "Hi #{name}, let's figure out your salary!"

#2. Get the user's hourly rate
print "Enter your hourly rate: $"
hourly_rate = gets.chomp.to_i

#3. Ask the user how hours per week they work
print "How many hours per week do you work? "
hours_per_week = gets.chomp.to_i

#4. Ask the user how many weeks they work in a year
print "How many weeks do you work in a year? "
weeks_in_year = gets.chomp.to_i

#5. Call a compute_salary() function that returns their annual wage
annual_wage = compute_salary(hourly_rate, hours_per_week, weeks_in_year)

puts "#{name}, your annual salary is $#{annual_wage+get_bonus}"