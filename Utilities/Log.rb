require_relative './Global.rb'

include Global

class Log

	def initialize(test)
		@t = Time.now
		@test = test
		file = "#{Global::OUTPUT_FOLDER}/#{test}"
		@logfile = File.new(file + "-" + @t.strftime('%v') + ".log","w")
	end

	def write(message)
		@logfile.write("\r\n" + @t.strftime('%r') + "  " + @test + "  " + message)
	end

	def close
		@logfile.close
	end

end
