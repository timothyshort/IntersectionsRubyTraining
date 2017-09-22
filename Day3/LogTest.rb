require_relative '../Utilities/Log.rb'

#1. Initialize the Log object and pass the name of the test
log = Log.new("NEW-ACCOUNT-TEST")

#2. Write to the log file using log.write
log.write("Open browser")
puts "Starting the test"
#
#
email = "tim@testemail.com"
log.write("Enter email: #{email}")
puts "Enter username"
#
#
log.write("Clicking submit")
puts "Click submit"

log.close
