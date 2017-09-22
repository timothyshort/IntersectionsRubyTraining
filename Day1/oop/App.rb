require './contract.rb'
require './newhire.rb'
require './employee.rb'
#Contractor Application

#Include Modules
include NewHire

#1. Company gets a new client and contract

#Prompt user to enter the client
print "Enter new client: "
client = gets.chomp

#Create an object Contract
contract = Contract.new(client)
num_of_contractors = contract.get_contractors

#Print info
puts "Congratulations on securing a new contract!"
contract.print_info


#2. Hire new contractors for the contract
contractors = NewHire.add_contractors(num_of_contractors)

puts contractors[0].print_info
puts "Welcome our new hires!"
contractors.each do | contractor |
  contractor.print_info
end


#3. Run payroll
