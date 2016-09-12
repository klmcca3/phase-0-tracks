#5.4

# Release 2
# class room with 4 desks. Each desk has supplies. 
classroom = {
	'desk1' => [ 'pins', 'crayons'],
	'desk2' => [ 'paper', 'markers'],
	'desk3' => [ 'binder', 'glue']
}

# Printing data
puts classroom['desk1'][1]
puts classroom['desk3'][0]
puts classroom['desk2'][1]

#pushes 'erasers' to ['desk1'][2] 
classroom['desk1'].push('erasers')

#print's erasers 
puts classroom['desk1'][2]

#pops 'erasers' from ['desk1'][2] 
classroom['desk1'].pop

#print's array without erasers
puts "Array without erasers:"
puts classroom['desk1']
