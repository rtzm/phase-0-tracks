# WORDGAME

# Store phrase in a string
# Make array of guessed letters
# Calculate max size for number of wrong guesses
# 	- find all unique letters in phrase
# 	- 1 wrong guess for every 5 unique letters (using base 5 to calculate)
# define make hint string
# 	- for each character in the phrase, 
# 		- if it's not a letter, print it
# 		- if it's in the guessed letter array, print letter
# 		- otherwise print _
# 		- unless it's the last letter in the phrase, print a space after the letter " "
# define method for checking if letter is a new guess
# 	- check if it's a valid letter
# 	- compare letter to guessed letters array
# define method for adding a new guess
# 	- add letter to guessed letters array
# define method to check win/loss
# 	- if hint string contains no _ characters, player wins
# 	- if wrong guesses left is 0, player loses


# user interface pseudocode
# Ask user for a word or phrase
# check if an acceptable phrase
# Add a bunch of blank lines to output to move that word out of the window
# Loop the following until size of guessed letters string reaches max or word is guessed
# 	- Print hint string
# 	- Ask user for letter
# 	- Check if user input a letter
# 	- Check if user input a letter that hasn't been guessed yet
# 		- print "you guessed that already" error and prompt new guess
# 		- Otherwise, guess this letter

# BUSINESS LOGIC
class Wordgame
	attr_reader :is_over, :wrong_guesses_left
	def initialize(phrase)
		@phrase = phrase
		@guessed_letter_array = []
		@wrong_guesses_left = calculate_max_wrong_guesses
		@is_over = false
	end

	def calculate_max_wrong_guesses
		letters = @phrase.scan(/[A-Za-z]/)
		letters.map!(&:downcase).uniq!
		# 1 wrong guess allowed for each 5 unique letters
		if letters.size < 5
			max = 1
		elsif letters.size > 25
			max = 6
		else
			max = letters.size.to_s(5)[0].to_i + 1
		end
	end

	def make_hint_string
		hint_string = ""
		@phrase.each_char do |c|
			is_letter = (c =~ /[A-Za-z]/)
			was_guessed = (@guessed_letter_array.include? c.downcase)
			if is_letter and !was_guessed
				hint_string << "_"
			else
				hint_string << c unless c == " "
			end
			hint_string << " "
		end
		# delete last space
		hint_string.chop!
	end

	def check_guess_is_letter(input)
		# check if it's a valid letter
		(input =~ /[A-Za-z]/) and input.size == 1
	end

	def check_guess_is_new(input)
		# compare letter to guessed letters array
		!(@guessed_letter_array.include? input)
	end

	def add_new_guess(ltr)
		@guessed_letter_array.push(ltr)
		correct = (@phrase.include? ltr) || (@phrase.include? ltr.upcase)
		@wrong_guesses_left -= 1 if !correct
		return correct
	end

	def check_game_end
		if @wrong_guesses_left == 0
			@is_over = true
			"lose"
		elsif !(make_hint_string.include? "_")
			@is_over = true
			"win"
		else
			false
		end
	end

	def Wordgame.check_phrase(phrase)
		if /[A-Za-z]+/.match(phrase)
			true
		else
			false
		end
	end
end

# USER INTERFACE
puts "Welcome to the word game, player 1!"
phrase = nil
until phrase
	puts "Please enter a word or phrase for the other player to guess: "
	input = gets.chomp
	if Wordgame.check_phrase(input)
		phrase = input 
	else
		puts "Not valid input..."
	end
end
wordgame = Wordgame.new(phrase)

# clear the above for the next player
50.times { puts }

end_condition = ""

puts "Welcome to the word game, player 2! Guess the letters in this phrase:"
while !wordgame.is_over
	puts wordgame.make_hint_string
	puts "What's your guess? (wrong guesses left: #{wordgame.wrong_guesses_left})"
	valid_guess = nil
	until valid_guess
		input = gets.chomp
		if wordgame.check_guess_is_letter(input)
			if wordgame.check_guess_is_new(input)
				valid_guess = input
			else
				puts "You already guessed that letter. Please input a new guess."
			end
		else
			puts "Please input a single letter."
		end
	end
	wordgame.add_new_guess(valid_guess.downcase)
	end_condition = wordgame.check_game_end
end

case end_condition
when "win"
	puts phrase
	puts "Congratulations! You guessed the correct phrase!"
when "lose"
	puts phrase
	puts "Oh, you ran out of guesses!"
end