begin
#This is the for loop
for n in 0..5
	print "Iterating through loop: "
	puts n
end

#This is the each iterator
(15..20).each do |i|
	print "Iterating through the each loop "
	puts i
end

#We want to print even numbers 0 to n
print "Enter n to find even numbers 0 to n: "
maxN = gets.chomp.to_i
0.step(maxN,2).each do |num|
	puts num
end

end

#While looks for TRUE or Until looks for FALSE
x,y = 0,5
begin
	puts "x = #{x}"
	puts "y = #{y}"
	x=x+1 #x+=1
#end while x < y
end until x==y