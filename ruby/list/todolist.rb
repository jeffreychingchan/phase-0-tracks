class TodoList
	
	def initialize(x)
	    @ary = x 
	end	

	def add_item(y)
		@ary.push(y)
	end
	
	def delete_item(z)
		@ary.delete(z)
	end
	
	def get_item(v)
		p @ary[v]
	end	

	def get_items
		
		p @ary 
	end
end