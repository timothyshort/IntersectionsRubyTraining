class Contract

  def initialize(client)
    @client = client
    @id = client[0..1] + rand(23047...96895).to_s

    print "How many contractors will you need to hire? "
    @contractors = gets.chomp.to_i
  end

  def get_contractors
    return @contractors
  end

  def print_info
    puts "CLIENT: #{@client}"
    puts "CONTRACT ID: #{@id}"
    puts "CONTRACTOR HIRES: #{@contractors}"
  end

end
