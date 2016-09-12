#release 1
#Arrays declared 
fav_players = ["jordan", "shaQ", "T-Mac"]
sentence = []

puts "Arrays before .each iteration:" 
puts fav_players

puts sentence

puts "Array iteration using .each:"

fav_players.each do |player|
	#player is the index for fav_player
	
	 player = player.capitalize
	 
	 puts "#{player} is my favorite player"
	 sentence << player
end	

puts "array after map"
puts sentence 


#map iteration
puts "map call:"

fav_players.map! do |player|
	player = player.capitalize
	player += " is a NBA great"
 end

puts fav_players

bball_list = {
	"Jordan": "Bulls",
	"ShaQ": "Lakers",
	"T-Mac": "Rockets"
	}
	
#iterate through hash using map and each

#hash iteration using each
puts "Hash .each iteration"
bball_list.each do |player,team|
	
	puts " #{player} played for #{team}!"
end



#release 2

# original array
array = [54, 6, 8, 9]
puts array

hash = { 1 => 'one', 2 => 'two', 3 =>'three',  4 => 'four'}
puts hash

# iterating and deleting using the method below

array.delete_if {|number| number > 8}
hash.delete_if {|num, word| num > 3}

# prints whats left over after methods are ran.

p array
p hash

#part2

array2 = [54, 6, 8, 9]
puts array2

hash2 = { 1 => 'one', 2 => 'two', 3 =>'three',  4 => 'four'}
puts hash2

array2.keep_if {|num| num >= 8}
hash2.keep_if {|num, word| num >= 3}

# prints whats left over after methods are ran.

p array2
p hash2

#part3

array3 = [54, 6, 8, 9]
puts array3

hash3 = { 1 => 'one', 2 => 'two', 3 =>'three',  4 => 'four'}
puts hash3

array3.delete_if {|num| num >= 8}
hash3.delete_if {|num, word| num >= 3}

# prints whats left over after methods are ran.

p array3
p hash3



#part4

array4 = [54, 6, 8, 9]
puts array3

hash4 = { 1 => 'one', 2 => 'two', 3 =>'three',  4 => 'four'}
puts hash3

array4.reject! {|num| num >= 8}
hash4.reject! {|num, word| num >= 3}

# prints whats left over after methods are ran.

p array4
p hash4