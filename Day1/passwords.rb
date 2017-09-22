#Use http://www.theonegenerator.com/ to generate set of passwords

valid_passwords = []

#Read a password file
filename = "C:/Intersections/Programs/Day1/files/passwordlist.txt"
file = open(filename)
until file.eof
	password = file.readline	
	#Test whether each passwords fits our criteria
	#Password must containt ! @ # $ %
	for i in 0..password.length-1
		if (password[i] == "!" || password[i] == "@" || password[i] == "#" || password[i] == "$")
			valid_passwords[valid_passwords.length] = "VALID PASSWORD #{password}"
		end
	end
end
file.close

#And then generate a report (export to file)
file_results = "C:/Intersections/Programs/Day1/files/password_results.txt"
output = open(file_results, "w")
valid_passwords.each do | pw |
	output.write(pw)
end
output.close