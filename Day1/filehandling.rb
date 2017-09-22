def read_file
	filename = "C:/Intersections/Programs/Day1/files/SampleText.txt"

	#1. Open the file
	file = open(filename)

	#2. Read the file
	#puts file.read
	until file.eof
		puts "file.readline"
	end

	#3. Close the file
	file.close
end

def write_to_file
	filename = "C:/Intersections/Programs/Day1/files/TextOutput.txt"
	data_file = open(filename, "w")
	data_file.write("I am writing text into this file")
	data_file.close
end

read_file
write_to_file
