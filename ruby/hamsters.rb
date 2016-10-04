def hamster_program
	puts "what is hamster's name?"
	hamsterName = gets.chomp

	puts "how noisy are you? (from 1 - 10)"
	volume = gets.to_i 


	puts "what is your fur color?"
	furColor = gets.chomp

	puts "are you a good candidate for adoption? (y/n)"
	adoption = gets.chomp 
		if adoption == "y" || "Y"
			goodCandidate = true
		elsif adoption == "n" || "N"
			goodCandidate = false
		else 
			goodCandidate = "I do not understand your input"
		end

	puts "What is your current age?"
	age= gets.chomp 

		if age == ""
			age = nil
		else 
			age = age.to_i 
		end


	print "Your hamster's name is #{hamsterName}. He has a volume of #{volume}, and his age is #{age}. " 
	print "Good Hamster to adopt? #{goodCandidate}"

end 



hamster_program()


