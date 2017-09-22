puts "Welcome to the Number Guessing Game!"

def guess_number(rand_number)
	begin
		#2. Ask the user to guess a number
		print "Enter your guess: "
		guess_number = gets.chomp.to_i

		#3. Test the number; see if it is the random number
		if (guess_number == rand_number)
			puts "You got it!"
		else
			puts "Wrong guess... please try again..."
		end

		#4. Loop until the user guesses the correct number
	end until guess_number == rand_number
end

def guess_number_suggestion(rand_number)
	begin
		#2. Ask the user to guess a number
		print "Enter your guess: "
		guess_number = gets.chomp.to_i

		#3. Test the number and give a hint
		if (guess_number > rand_number)
			puts "Too high! Try a lower number"
		elsif (guess_number < rand_number)
			puts "Too low! Try a higher number"
		end

		#4. Loop while the user guess is not equal to the random number
	end while guess_number != rand_number
	puts "You got it!"
end

#1. Generate a randum number
rand_number = rand(0...10)

#guess_number(rand_number)
guess_number_suggestion(rand_number)