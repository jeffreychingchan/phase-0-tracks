###RELEASE 0###

#Initialize and manipulate arrays
ary = [1,2,5, 7, 35]

ary[3] = 90

#Use variables to access arrays
p ary 

#Initialize and manipulate hashes
hash = {
	name: "jeff",
	age: 99,
}

hash[:name] = "steve"

#Use variables to access hashes
p hash  





###RELEASE 3###
#Interior designer asking client information

#1. ask clients for information
#2. convert data to appropriate data type
#3. show client the information that he/she inputted.
#4. ask if the information is correct
#5. ask if there is anything to edit
#6. if no, client types "none"
#7. if yes, client type in according key, then make a change to the value.
#8. show the client the final result when the client types "none"
#9. exit the program

#information needed:
#name, age, number_of_children, decor_theme, you have a pet?


#User input data
puts "Welcome Interior Designer!"
puts "Knowing our clients is our priority! In order for us to know you better, please answer the following questions so we know how to fulfil your needs. "

puts "What is your name?"
client_name = gets.chomp

puts "What is your age?"
client_age = gets.chomp.to_i

puts "Number of children?"
client_children = gets.chomp.to_i

puts "What is your decor preference?"
client_decor = gets.chomp

puts "Do you have any pets? (y/n)"
pet_yes_no = gets.chomp 

if pet_yes_no.downcase == "y"
	client_pet = true
elsif pet_yes_no.downcase == "n"
	client_pet = false
end 

#client's inputted data
client_information = {
	:name => client_name,
	:age => client_age,
	:number_of_children => client_children,
	:decor_theme => client_decor,
	:pet => client_pet
}

#display client's initial data
puts "The following is your information:"
puts  client_information

#ask client if this the information is correct
puts "Does this information need to be updated?"
puts "If yes, please type in the category that needs to be updated (please select one: name, age, number_of_children, decor_theme, pet)." 
puts "If no, type 'none'."

client_answer=gets.chomp

if client_answer == "none"
	puts "thank you for your input."
else
	puts "You selected catergory '#{client_answer.upcase}'. Please submit the new update."
	new_update = gets.chomp 
	
	client_information[client_answer.to_sym] = new_update 
end 

#display user's final input
puts "Here is your new data: #{client_information}."
puts "Thank you for your input."