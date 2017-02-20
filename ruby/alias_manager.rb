# BUSINESS LOGIC

# make vowels string and consonants string
# split name into two strings in array
# reverse array
# each name in array:
# 	- name to downcase
#	- each character in name
# 		-- if in vowel string, 
# 			--- check index
# 			--- select vowel at next index, unless index = 4, then select 0
# 		-- else select next consonant, mimicking above process
# 		-- add to string code_name
# 	- capitalize first letter

def encrypt_name(full_name)
	names = full_name.split(" ").reverse!
	names.map! do |name|
		code_name = ""
		name.downcase!
		ltrs = name.chars
		ltrs.each { |ltr| code_name << next_ltr(ltr) }
		code_name.capitalize!
	end
	names.join(" ")
end

def next_ltr(ltr)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	if vowels.include? ltr
		if vowels.index(ltr) < (vowels.size - 1)
			vowels[vowels.index(ltr)+1]
		else
			# edge case where index == 4 and letter is u
			vowels[0]
		end
	else
		if consonants.index(ltr) < (consonants.size - 1)
			consonants[consonants.index(ltr)+1]
		else
			# edge case where index == 20 and letter is z
			consonants[0]
		end
	end
end

# USER INTERFACE
quit = false

until quit
	print "Provide a name (quit with 'quit'): "
	input = gets.chomp
	if input.downcase == "quit"
		quit = true
		next
	else
		puts encrypt_name(input)
	end
end
