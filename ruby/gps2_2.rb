# Quantity of items defauts to 1

#  Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create empty hash 
  # split string of items (creates array)
  # fill empty hash with each element of the array being the keys
  # set default quantity to 1 (values)
  # print the list to the console [can you use one of your other methods here?]
# output: Hash = {item => 1}


def create_list(item_string)
	grocery_list = Hash.new 
	
	item_list = item_string.split
	
	grocery_list = item_list.map! {|i|
		quantity = 1
		[i, quantity]}.to_h

	
	return grocery_list
end 

grocery_list = "carrots apples cereal pizza"

grocery_list  = create_list(grocery_list)


p grocery_list 

# Method to add an item to a list
# input: (item name , optional quantity)
# steps: hash name .push item name, optional quantity 
# output: p hash name 

def add_item(grocery_list, new_item_to_add, quanity)
	grocery_list[new_item_to_add] = quanity
	p grocery_list

end

grocery_list = add_item(grocery_list, "banana", 3)

# Method to remove an item from the list
# input: (hash name, item name)
# steps: find out if hash name includes item name 
# 	if so, delete item (delete_if key == item name)
# return hash name 
# output: p hash 

def delete_item(hash, item)
	hash.delete(item)
	return hash 
end

grocery_list = delete_item(grocery_list, "banana")
p grocery_list

# Method to update the quantity of an item
# input: hash name, item name, new quantity  
# steps: hash name[item name] = new quantity 
# output: p hash 

def update_quantity(hash, item, quantity)
	hash[item] = quantity
	return hash
end

grocery_list = update_quantity(grocery_list, "apple", 5)
p grocery_list

# Method to print a list and make it look pretty
# input: hash name 
# steps: hash name .each |item, quantity|
# 		 puts "You need #{quantity} #{item}"
# output: List on seperate lines 

puts "Items that you need: #{grocery_list}"