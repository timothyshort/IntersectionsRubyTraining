require './car.rb'

bmw = Car.new("BMW" , "5 Speed" , "Red")
bmw.starts
puts "Car color: #{bmw.get_color}"

bmw.accelerate(10)
bmw.accelerate(20)
puts "Current speed: #{bmw.get_speed}"
bmw.accelerate(20)
bmw.accelerate(10)
puts "Current speed: #{bmw.get_speed}"


#ford = Car.new("Ford","Automatic","Blue")
#ford.starts
#ford.brake

#100 lines later
