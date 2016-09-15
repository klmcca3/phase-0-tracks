#5.5
#Name Swapper Application




#############Interface#############


##globals## 

saved_names = {}
fullname = nil


until fullname == 'quit'
	
puts "Welcome! please enter your name, use two seperate words! *enter 'quit' to exit* "

full_name = gets.chomp

if full_name != 'quit'
#Converts string to array and swaps name 
fullname_array = full_name.split

#First name within Array
first = fullname_array.first
#$first = $first.split('')
puts "prints first name"
p first

#Last name within Array
puts "prints last name"
last = fullname_array.last
#$last = $last.split('')
p last

#joins the names 
new_name = last + " " + first
old_name = first + " " + last
#places names in hash
saved_names[new_name] = old_name
puts "your name was #{old_name}, but  your spy name is #{new_name}"

saved_names.each_pair { |key, value|

}
else
	puts saved_names
end

end


# Iterate over saved_names hash,
# print the key and value.


#scramble and give next vowel then constantent 
#.next methods for constantents

vowels = %w(a, e, i, o, u)
const = %w(b, c, d, f, g, h, j, k, l, m, n, p, q, r, s, t, v, w, x, y, )
 
#fullname_array container
fullname_array = []
	
first = []
last = []
	
	

	
	#scramble and give next vowel then constantent 
	#.next methods for constantents

	#method that iterates through the split up array and returns the scrambled first or last name
	def first_spyname
	 #rotates the vowels
	 rotated_vowels = vowels.rotate
	

	 #container for the first name that has been rotated
	 rotated_first = []
	 
	
	 first.each do |letter_swapper|
	 	#letter_swapper goes through to see if any vowels are present
	   
	 	if  vowels.include?(letter_swapper)
	 		vowels_index = vowels.index(letter_swapper)
	 		letter_swapper = vowels[letter_swapper].rotate
	 		
	 	else
	 		letter_swapper = const[letter_swapper].rotate
			puts "#letter_swapper = vowels.rotate"
			#first.next
		end	
		rotated_first << letter_swapper 
		puts "rotate"
		puts rotated_first
		first_name = rotated_first.join
	
	  end	

    end

	#method that iterates through the split up array and returns the scrambled first or last name
	def last_spyname
	last.each do |letter_swapper|
	 	#letter_swapper goes through to see if any vowels are present
	   
	 	if  vowels.include?(letter_swapper)
	 		vowels_index = vowels.index(letter_swapper)
	 		letter_swapper = vowels[letter_swapper].rotate
	 		
	 	else
	 		letter_swapper = const[letter_swapper].rotate
			puts "#letter_swapper = vowels.rotate"
			#first.next
		end	
		rotated_last << letter_swapper 
		puts "rotate"
		puts rotated_first	
		puts "rotate"
		puts rotated_first
		last_spyname = rotated_last.join
		
	end

end
	 
	
	#puts rotated_first
	#first_spy_name = rotated_first.join
	#last_spy_name = rotated_last.join
	
	#spy_name = first_spy_name + last_spy_name
	

	

	  
	


#def letter swap ()

#Swaps the names around and Converts back to string 

#def nameSwap(fullname)
	#fullname is the array that gets swapped
	#below swaps the names and converts them to strings
#	fullname = fullname.pop + " " + fullname.first
	#prints
#	puts "My real name with last name first is: #{fullname}"
#end


#iterate through swapped name and 


#firstname = fullname_array.first
#lastname = fullname_array.last


#swap first and last name