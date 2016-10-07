


#ENCRYPT AND DECRYPT METHOD DECLARATIONS 

#encrypt method 
def encrypt(password)
	index = 0


	while index < password.length
		if password[index] == "z"
			password[index] == "a"
		else 
  			password[index] = password[index].next
  		end 
  		index += 1
	end

	#output and goodbye		
	puts "Here is the encrypt password: #{password.to_str}"

	puts "Thank you bye-bye."
	
	
	
end 

###############################################

#decrypt method 
def decrypt(password)
	index = 0
	
	while index < password.length
		if password[index] == "a"
			password[index] = "z"
		else 
  			password[index] = (password[index].ord-1).chr  
  		end
  		index += 1
	end

	
	#output and goodbye	
	puts "Here is the encrypt password: #{password.to_str}"

	puts "Thank you bye-bye."
	 
end 

###########################################

# OUR DRIVER CODE 

#greet user
puts "Hello Secret agent. Would you like to DECRYPT or ENCRYPT a password? Type 'DEC' to decrypt a password or 'ENC' to encrypt a password."

	ENCorDEC = gets.chomp.downcase

#user's input decision
if ENCorDEC == "enc"
	puts "you have chosen Encrypt Password."
	puts "please input password to encrypt."
	encrypt(gets.chomp)
	
elsif ENCorDEC == "dec"
	puts "you have chosen Decrypt Password."
	puts "please input password to decrypt."
	decrypt(gets.chomp)
	
else 
	puts "I don't understand your input. Please try again."
end 




###########################
###TEST###

#encrypt("abc")
#encrypt("zed")

#decrypt("bcd")
#decrypt("afe")

	#at first, it will encrypt all the letters in the word by next letter. Then, it will decrypt the word letters to the previous letter.    
#decrypt(encrypt("swordfish"))