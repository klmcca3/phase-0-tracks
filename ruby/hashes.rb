#This program allows user input for the following:
#The client's name, age, number of children, decor theme, etc
#prompt user to enter their data
#convert input to right data type
#print out hash info after client has entered their data
#allow user to update info after they have entered their info, if no updating skip over
#Print out all info over for user to see.


# This object will house the client's information

client_info = {
	name: "",
	address: "",
	email: "",
	age: 0,
	phone: 0,
	children: false,
	decor_theme: ""
}

#Will ask for input from client

puts "Welcome to Keith's Interior Design Database"
puts "I would like to get some information from you. Don't worry, I will not share it with anyone."

p "What is your name"
client_info[:name] = gets.chomp

p "What's your address?"
client_info[:address] = gets.chomp

p "What's your email address?"
client_info[:email] = gets.chomp

p "How old are you?"
client_info[:age]= gets.chomp.to_i

p "Phone number?"
client_info[:phone] = gets.chomp.to_i

p "Do you have children? *Enter yes or no.*"
client_info[:children] = gets.chomp.downcase

#makes sure user enters yes or no
until client_info[:children] == 'yes' || client_info[:children] == 'no'
	puts "Please enter yes or no"	
end

#converts data type to boolean
if client_info[:children] == 'yes' 

	client_info[:children] = true
else
	client_info[:children] = false
end

puts"Decor Theme:"
client_info[:decor_theme] = gets.chomp

puts "Would you like to update anything? *Enter 'name',  'age', 'address', 'email', 'children', 'phone', or 'decor_theme' || 'no' for no changes *"

update = gets.chomp.to_sym

#makes sure user enters right input
if update == :name
	puts "What is your name?"
  client_info[:name] = gets.chomp
elsif update == :age
  puts "How old are you" 
client_info[:age] = gets.chomp.to_i
elsif update == :address
  puts "Where do you live"
  client_info[:address] = gets.chomp
elsif update == :email
  puts "What is your email?"
  client_info[:email] = gets.chomp
elsif update == :phone
  puts "What is your phone number?"
  client_info[:phone] = gets.chomp.to_i
elsif update == :children
  puts "Do you have children? (Yes or No):"
  client_info[:children] = gets.chomp.downcase
  #making sure yes or no  is the answer 
  until client_info[:children] == "yes" || client_info[:children] == "no"
    puts "'Yes' or 'No' only"
    client_info[:children] = gets.chomp.downcase
  end
  #checks input of child input
  if client_info[:children] == 'yes'
   client_info[:children] = true
  else
    client_info[:children] = false
  end
elsif update == :decor_theme
  puts "Decor Theme?"
  decor_theme = gets.chomp
end

#displays code again for user to see
puts client_info