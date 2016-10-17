class Puppy
	
  def initialize
  	puts "Initializing new Puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(num)
  	num.times do |x|
  		puts "Woof!"
  	end
  end
  def roll_over
  	puts "Rolled Over!"
  end
  def dog_years(human_age)
  	human_age * 7
  end
  def play_dead
  	puts "Rip Dog"
  end
end

class Restaurant
	def initialize
		puts "Initialize new restaurant..."
	end
	def makeFood(foodName)
		puts "Making #{foodName}"
	end
	def makeDrinks(drinkName)
		puts "Making #{drinkName}"
	end
end

restaurantArray = []

doggo = Puppy.new
doggo.fetch("Frisbee")
doggo.speak(3)
doggo.roll_over
doggo.dog_years(3)
doggo.play_dead

50.times do |x|
	restaurantArray.push(Restaurant.new)
end

restaurantArray.each{|x| x.makeFood("burger")}
