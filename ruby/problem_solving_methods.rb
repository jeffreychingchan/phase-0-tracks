arr = [42, 89, 23, 1]

#p search_array(arr, 1)
#=> 3
#p search_array(arr, 24)
#=> nil

def search_array(arr, int)
	count = 0
	arr.each do |x|
		if x == int
			return count
		end
		count += 1
	end
	return nil
end

#search_array(arr, 23)

def fib(num)
	fibArray = [0, 1]
	for each in 1..num - 2
		fibArray.push(fibArray[each] + fibArray[each - 1])
	end
	return fibArray
end

#fib(100)

#Pseudocode for bubble sorting:
#1. set a "swapped" value = false
#2. while !swapped
#3.  for each element in array.length - 1:
#3a. if the number at the given index is greater than the number in the index next to it,
#3ai. swap the two elements, set swapped to true
#4. Break out of the while loop when swapped remains false
#end

def sorting(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
      	arrayTemp = array[i]
      	array[i] = array[i+1]
      	array[i+1] = arrayTemp
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

sorting(arr)