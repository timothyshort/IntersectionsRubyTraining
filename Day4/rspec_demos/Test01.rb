require 'rspec'

#Describe a feature a test setup
describe 'A simple RSpec test' do

  #List several conditions to test => "Examples"
  it 'has a valid method declaration' do
    puts "This method was properly setup"
  end

  it 'should add numbers properly' do
    sum = 2 + 2
    puts "Additionl of 2 and 2 is #{sum}"

    #RSpec Expectation
    expect(sum).to eq(4)
  end

  it 'should handle non-zero numbers' do
    number_to_test = 10
    puts "Can RSpec handle #{number_to_test}?"
    expect(number_to_test).not_to eq(0)
  end

  it 'should test string values properly' do
    phrase = "We will test a web application"
    puts "Can RSpec handle substrings?"
    expect(phrase).to include("test")
  end

end
