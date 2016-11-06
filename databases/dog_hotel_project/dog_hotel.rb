# DOG HOTEL DATA/PROGRAM

require 'sqlite3'

# create database for my dog hotel
db = SQLite3::Database.new("dog_hotel_data.db")
db.results_as_hash = true 

# create a command for doggie guests table 
create_dog_guests_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS dog_guests(
		id INTEGER PRIMARY KEY, 
		name VARCHAR(255),
		breed VARCHAR(255),
		num_of_stay INT,
		room_num INT
	)
SQL


# create a doggie guests table 
db.execute(create_dog_guests_table_cmd)


# METHOD
def add_dog_guest(db, name, breed, num_of_stay, room_num)
	db.execute("INSERT INTO dog_guests (name, breed, num_of_stay, room_num) VALUES (?, ?, ?, ?)", [name, breed, num_of_stay, room_num])
end 

def print_data(db)
	dog_guests_data = db.execute("SELECT * FROM dog_guests")

	dog_guests_data.each do |guest|
		puts "guest id: #{guest['id']}"
		puts "guest name: #{guest['name']}"
		puts "guest breed: #{guest['breed']}"
		puts "number of night stay: #{guest['num_of_stay']}"
		puts "room number: #{guest['room_num']}"
		puts "\n"
	end 
end 


# Driver Code

puts "Are you a guest or hotel staff? Please type 'g' for guest or 's' for hotel staff"
hotel_input =  gets.chomp

if hotel_input == "g"

	puts "Welcome to Fur Seasons Luxurious Dog Hotel"
	puts "Please tell us about your fur baby."
	puts "What is his/her name?"
	pet_name = gets.chomp
	puts "thanks!"

	puts "What type of breed is your dog?"
	breed = gets.chomp 
	puts "thanks!"

	puts "How many nights are your pet planning to stay with us? Please input number only."
	night_stay = gets.chomp 
	puts "thanks!"

	puts "Please input the desired room number: "
	room_num = gets.chomp 
	puts "thanks!"
	
	
	add_dog_guest(db, pet_name, breed, night_stay, room_num)
	

elsif hotel_input == "s"
	puts "You have selected: Hotel Staff"
	puts "Would you like to see the guests' database? (y / n)"
	staff_input = gets.chomp 
		if staff_input == "y"
			print_data(db)
		elsif staff_input == "n"
			puts "exit"
		end 
end 



