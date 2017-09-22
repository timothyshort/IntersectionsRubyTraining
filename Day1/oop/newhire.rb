module NewHire

  def add_contractors(num_of_contractors)
    puts "Will look to hire #{num_of_contractors} contractors"

    contractors = []

    #Arrays can hold objects
    contractors.push(Employee.new("Roger"))
    contractors.push(Employee.new("Mary"))
    contractors.push(Employee.new("Ellen"))

    return contractors

  end

end
