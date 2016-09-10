def encrypt(word)
    index = 0
    result = ""
    # Iterate through each letter in the word
    while index < word.length
        # If that letter happens to be an edge case
        if word[index] == "z"
            result += "a"
        # For each letter go forward one character
        else
            result += word[index].next
        end
    index += 1
    end
    # Print the encrypted word
    puts "Encryption completed, encrypted password is: #{result}"
end

# Decryption: Take a string, iterate throuch each letter (spaces included) and go back one letter

def decrypt(word)
    result = ""
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    # Make the word and array.
    word = word.split("")

    # Iterate through each letter in the array.
    for letter in word do
        index = 0
        # For a given letter, iterate through the alphabet and decrypt each one
        while index < alphabet.length
            if letter == alphabet[index]
                result += alphabet[index -1]
            # Take into account all edge cases
            elsif letter == "a"
                result = "z"
            elsif letter == "z"
                result = "a"
            end
        index += 1
        end
    end
    # Print the decrypted word
    puts "Decryption completed, decrypted password is: #{result}"
end


# Method to get user input
def get_input
    puts "Enter password:"
    password = gets.chomp
end

# Add driver code
puts "Hello!! would you like to encrypt or decrypt a password?"

user_input = ""

while user_input = gets.chomp
    case user_input
    when "encrypt"
        puts "Encryption activated"
        encrypt(get_input)
        break
    when "decrypt"
        "Decryption activated"
        decrypt(get_input)
        break
    else
        puts "Not a valid option."
        puts "Please enter 'encrypt' or 'decrypt' as an option."
    end
end