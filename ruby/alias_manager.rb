#ALIAS MANAGER PROGRAM#
#alter given spy name into a fake name

#####Criteria#####
#swap the first name and last name.
#change all the vowels into the next vowel. 
#change all consonant (all letters beside vowel) into the the next consonant.

#####Pseudocode#####
#write a method that alter all the vowels to the next vowel
#write a method that alter all consonant to the next consonant
#write a method that swap first name to last name.
#first letter of first and last name will be capitalized. 
#ask for user to input first name and last name 
#print result of the new altered spy name.



#Driver Code#
puts "Hello welcome to spy alias name program"

puts "Please input your real first name."
real_first_name = gets.chomp

puts "Please input your real last name."
real_last_name = gets.chomp 


#altering letters and vowels method#
def alter_vowels_letters(name)
  vowels = ["a", "e", "i", "o", "u"]
  name = name.split('')
  new_name = name.map! do |letters|
    if vowels.include?(letters)
      vowels = vowels.rotate[vowels.index(letters)]
    else
      letters.next
    end
  end
  return new_name.join
end


#Results#
spy_first_name = alter_vowels_letters(real_first_name)
spy_last_name = alter_vowels_letters(real_last_name)

spy_full_name = "#{spy_last_name}  #{spy_first_name}"

puts "Your new spy name is Double-O #{spy_full_name}!"


#loop quesiton#
loop do 
	puts "Are you satisfied with your new spy name? Please type 'no' or 'quit'."
	input = gets.chomp 
	
	if input.downcase == "quit"
		puts "Thank You! Please visit soon."
		break
	elsif input.downcase == "no"
		puts "Please input your real first name again."
			real_first_name = gets.chomp

		puts "Please input your real last name again."
			real_last_name = gets.chomp 
			
			spy_first_name = alter_vowels_letters(real_first_name)
			spy_last_name = alter_vowels_letters(real_last_name)


			spy_full_name = "#{spy_last_name}  #{spy_first_name}"
			
			puts "Your new spy name is Double-O #{spy_full_name}!"
		
		end 
end 


#Data Structure#
agent_info = { 
	
}

#input into data structure#
agent_info["agent_real_name"] = "#{real_first_name} #{real_last_name}"
agent_info["agent_spy_name"] = "#{spy_full_name}"

#print user info from data structure# 
p agent_info
puts "#{agent_info["agent_real_name"]} is also known as #{agent_info["agent_spy_name"]}"