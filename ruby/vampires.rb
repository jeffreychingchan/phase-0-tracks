puts "how many employees will be processed?"
	numOfEmployees = gets.to_i



def vampires_interview 
	
	

	
	puts "what is your name?"
	name = gets.chomp 

	puts "how old are you?"
	age = gets.to_i   
	
	puts "what year were you born?"
	year = gets.to_i
	
		if (age == 2016-year)
			 correct_age = true 
		else 
			correct_age = false 
		end 
	
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp 
	
		if garlic_bread.downcase == "y"
			likes_garlic = true 
		elsif garlic_bread.downcase == "n"
			likes_garlic = false
		else 
			puts "I dont not understand your input."
		end
	

	puts "Would you like to enroll in the company’s health insurance?(y/n)"
	health_insurance = gets.chomp
		if health_insurance.downcase == "y"
			wants_healthInsurance = true
		elsif health_insurance.downcase == "n"
			wants_healthInsurance = false
		else
			puts "i don't understand your input."
		end
	
	
		
	
	if name.downcase  == "drake cula" 
 		puts "Definitely a vampire."
 	elsif name.downcase == "tu fang"
 		puts "Definitely a vampire."
	elsif correct_age == true && likes_garlic == true && wants_healthInsurance == true 
		puts "Probably not a vampire."
	elsif correct_age == false && likes_garlic == false && wants_healthInsurance == true 
		puts "Probably a vampire."
	elsif correct_age == false && likes_garlic == false && wants_healthInsurance == false
		puts "Almost certainly a vampire."
	else 
		puts "Results inconclusive."
	end 
 

 	loop do 
		puts "what are your allergies? Type 'DONE' when complete." 
		allergies = gets.chomp 
		if allergies.downcase == "sunshine"
 			puts "Probably a vampire"  
 			break
 		end 
		if allergies.downcase == "done"
			break 
		end
		
	end
	
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	
end 

until numOfEmployees < 1
 vampires_interview()
 numOfEmployees-=1
end  