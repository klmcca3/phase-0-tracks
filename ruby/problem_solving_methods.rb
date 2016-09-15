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

fib(47)
fib(7)


#release 2

def bubble_sort(array)
	
	n = array.length 
	
	loop do
		swapped = false
		
		(n-1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				swapped = true
		    end
		end
		
		break if not swapped
		
	end
	
	array
end

a = [1, 5, 6, 1, 1, 2, 4, 5, 9]
bubble_sort(a)

