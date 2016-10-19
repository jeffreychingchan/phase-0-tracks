module Shout
	def yell_angrily(words)
    	words + "!!!" + " :("
	end

	def yell_happily(words)
		words + " yayy!!!!" + " =D" 
	end 

end


class Taxi_drivers
	include Shout
end

class Frat_boys
	include Shout
end


#DRVER CODE#
taxi = Taxi_drivers.new
taxi.yell_angrily("get outta the way")

frat=Frat_boys.new
frat.yell_happily("LEETS PARTTTY")
