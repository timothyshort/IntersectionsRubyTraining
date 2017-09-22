def find_max(arr)
	#Assume the max is the first element
	maxN = arr[0]

	#Iterate through the array to see if each element is larger than max
	arr.each do | num |
		if num > maxN
			maxN = num
		end
	end
	return maxN
end

def find_min(arr)
	minN = arr[0]
	arr.each do | num |
		if num < minN
			minN = num
		end
	end
	return minN
end

def find_sum_and_avg(arr)
	sum = 0
	#Add each element of the array 'x' to the sum
	arr.each do | x |
		sum += x
	end
	avg = sum/arr.length
	return sum, avg
end

#1. Generate an array of numbers
print "Enter the number of elements in the array: "
num_of_elements = gets.chomp.to_i
number_arr = []

#Generate random numbers to fill the array
for i in 0..num_of_elements-1
	number_arr[i] = rand(10..100)
	print "#{number_arr[i]} "
end

#2. Find the maximum number
ans_max = find_max(number_arr)
puts "\nThe maximum is #{ans_max}"

#3. Find the minimum number
ans_min = find_min(number_arr)
puts "The minimum is #{ans_min}"

#4. Find the sum and average
ans_sum, ans_avg = find_sum_and_avg(number_arr)
puts "The sum is #{ans_sum}"
puts "The average is #{ans_avg}"
#ans_sum_and_avg = find_sum_and_avg(number_arr)
#puts "The sum is #{ans_sum_and_avg[0]} and the average is #{ans_sum_and_avg[1]}"