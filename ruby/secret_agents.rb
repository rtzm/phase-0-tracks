def encrypt(str)
	# make result string
	# loop through each letter in the string by index i
		# - if this is a space go to next letter in string
		# - add one letter to result string with next letter in alphabet
	# add a case if the letter is "z"
		# - add "a" to result string
	result = ""
	i = 0
	while i < str.length
		next_letter = str[i].next
		next_letter = " " if str[i] == " "
		next_letter = "a" if str[i] == "z"
		result += next_letter
		i += 1
	end
	return result
end


def decrypt(str)
	# same layout as above program, but where we got next letter for the letter at that index of the string, now we want the previous letter:
	# build alphabet string to test where in alphabet this letter is
	# add letter from previous index in alphabet string
	result = ""
	i = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while i < str.length
		if str[i] == " "
			result += str[i]
			i += 1
			next
		end
		# get previous letter
		current = alphabet.index(str[i])
		result += alphabet[current-1]
		i += 1
	end
	return result
end

# store requested method from user in a variable "requested"
# store password in a variable "password"
# if requested is encrypt
# - call encrypt method and send it the password
# if requested is decrypt
# - call decrypt method and send it the password

puts "Would you like to encrypt or decrypt a password?"
requested = gets.chomp
puts "What is the password?"
password = gets.chomp

if requested == "encrypt"
	puts encrypt(password)
elsif requested == "decrypt"
	puts decrypt(password)
else
	puts "Didn't understand requested method. Please use 'encrypt' or 'decrypt'."
end

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")
# 
# puts decrypt(encrypt("swordfish"))
# encrypt took string "swordfish", and returned a new string that is encrypted and passed that to the decrypt method, which then decrypted it into a string "swordfish" and returned that string to puts