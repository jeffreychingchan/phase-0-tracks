class Santa_Class
	
	attr_reader :age, :ethnicity
	
	attr_accessor :gender, :age, :ethnicity
	
	def initialize(gender, ethnicity, age)
		puts "Initializing Santa instance..."
	  	@gender = gender
	  	@ethnicity = ethnicity
	  	@age = age
	  	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(type_of_cookie)
		p "That was a good type of cookie #{type_of_cookie}"
	end
	
	
	
	
	
	def celebrate_birthday
		@age += 1 
		puts "Santa is #{@age} years old!"
		 
	end
	
	def get_mad_at(name)
		@reindeer_ranking << name
	end
	
	def name 
		@name
	end

	def location 
		@location
	end
	
	def name=(new_name)
		@name = new_name
	end
			
end


#START Data#
santas_Data = []
santas_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

santas_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

santa_age = rand(0..140)
#END Data#


ethnicities_shuffle = santas_ethnicities.shuffle!

gender_shuffle = santas_genders.shuffle!


ethnicities_shuffle.length.times do |x|
santas_Data << Santa_Class.new(gender_shuffle[x], ethnicities_shuffle[x], rand(0..140))
end 

p santas_Data






#Santa_Class.new.eat_milk_and_cookies("oreo")
#eindeer.name = “The reindeer formerly known as Dasher.”