def toys
	puts "Welcome to Toy Story!"
	yield("buzz lightyear", "woody")
end

toys { |toy1, toy2| puts "Andy's favorite toys are #{toy1} and #{toy2}"  }


##################################################

#RELEASE 1
#array data
sandwich = ["bun", "tomato", "lettuce", "cheese", "meat", "onion"]

#hash data
superheroes = {

	Spiderman: "Peter Parker",
	Batman: "Bruce Wayne",
	Superman: "Clark Kent",
	Hulk: "Bruce Banner",
	Iron_Man: "Tony Stark", 

}

#iterate with .each via array data
sandwich.each do |ingredients|
	puts ingredients
end 

#iterate with .map! via array data
sandwich.map! do |ingredients|
	ingredients + "...YUM!"
end

puts sandwich


#iterate with .each via hash data
superheroes.each do |alter_ego, real_name|
	puts "#{alter_ego} is actually #{real_name}!!!"
end 


#iterate with .map via hash data
superheroes.map do |alter_ego, real_name|
	p "SUPER #{alter_ego}", "Human Name: #{real_name}" 
end

##################################################
#RELEASE 2

numbers = [1, 2, 3, 4, 5, 10, 50, 80]



hash = {

	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5,

}



#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
numbers.delete_if { |num| num <= 5}
hash.delete_if { |letter, nums| nums > 3  }




#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
numbers.keep_if { |num| num <= 5}
hash.keep { |letter, nums| nums > 3  }



#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
numbers.select {|num| num > 5}
hash.select { |letter, nums| nums > 3  }


#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
numbers.bsearch  {|num| num >5}
hash.reject { |letter, nums| nums > 3  }




