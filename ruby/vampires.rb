currentYear = 2016
counter = 0



puts "How many employees do you need to enter?"	
employees = gets.chomp.to_i



until counter >= employees

	counter += 1

		puts "Application for employee number #{counter}"

		puts "What is your name?"
		name = gets.chomp

	while name.length == 0
		puts "Please enter your name"
		name = gets.chomp	
	end

	puts "How old are you?"
		age = gets.chomp.to_i

		while age < 1 || age == nil
			puts "Please enter a number"
			age = gets.chomp.to_i
		end

	puts "What year were you born?"
		yearBorn = gets.chomp.to_i	

	# calculate if user got their age correct
	#return true or false
	#Var to test if potential vampire is telling truth about age
	ageTest = true
	calcAge = (currentYear - yearBorn)

	#assigns ageTest correct value
	if calcAge == age
		ageTest = true
	elsif calcAge != age
		ageTest = false
	end	

	puts "Our Cafe offers Garlic that is to die for, would you like to try some? *Enter 'y' for yes, 'n' for no*"
		garlic = gets.chomp
		until garlic == 'y' || garlic == 'n'
			puts "please enter 'y' for yes or 'n' for no."
			garlic = gets.chomp
		end	
			#assigns true or false to use later
			if garlic == 'y'
				garlic = true
			elsif garlic == 'n'
				garlic = false
		end	 	 

	puts "Do you need health insurance *Enter 'y' for yes, 'n' for no*"
		insurance = gets.chomp
		until insurance == 'y' || insurance == 'n'
			puts "please enter 'y' for yes or 'n' for no."
			insurance = gets.chomp
		end	
			#assigns true or false to use later
			if insurance == 'y'
				insurance = true
			elsif insurance == 'n'
				insurance = false
		end	 	


	# Testing to see if employee is a vampire


	if name == 'Drake Cula' || name == 'Tu Fang'
		result = 'Oh yeah, this is a vampire'

	elsif ageTest == true && garlic == true
		result = 'Probably not a vampire.'	

	elsif ageTest == false && garlic == false
		result = 'Probably a vampire.'

	elsif garlic == false && insurance == false
		result = 'Almost certainly a vampire.'

	else
		result = 'Results inconclusive.'
	end

	#prints result

	p "Result: #{result}"	

	insurance = false
	ageTest = false
	garlic = false



end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."