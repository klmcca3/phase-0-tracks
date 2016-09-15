#release 0
arr = [3, 7, 100, 44]
	index = 0 
	while index < arr_num.length
		#array_num is the array being passed
		#search_num is the number that's being searched for
		if arr_num[index] == search_num
			return index
		else
			nil
		end
		index += 1 
	end
end

p search_array(arr, 100)


#release 1

def fib(int)
	#int is the number being inputted
  array = [0, 1]
  until array.length == integer
  array << array[-1] + array[-2]
  end
  p array
end

fib(6)
fib(10)

