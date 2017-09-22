class Car

	#Constructor: this method is called implicitly when new object is created
	def initialize(car_type, transmission, color)
		@car_type = car_type
		@transmission = transmission
		@color = color
		@speed = 0
		puts "NEW CAR"
	end

	#Many other properties

	def starts
		puts "#{@car_type} is starting"
	end

	def accelerate(acc_speed)
		puts "Car is accelerating by #{acc_speed}mph"
		@speed += acc_speed
	end

	def brake
		puts "Car is braking"
	end

	def get_speed
		return @speed
	end

	def get_color
		return @color
	end

	def show_info
		#reveal object's information
	end
end
