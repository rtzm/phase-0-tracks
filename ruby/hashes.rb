# BUSINESS LOGIC

# initialize hash with empty values
	# - :name
	# - :age
	# - :has_children
	# - :preferred_style
	# - :number_of_bedrooms
	# - :account_open
# Go through each item in hash:
	# - prompt user for each element
	# - convert each of the above to correct type if necessary
	# - store in client hash
# Print hash to screen
# Ask if user wants to update an item
# If user wants to update item
	# - convert user input to symbol
	# - look up hash by symbol, returning warning if impossible
# Else, print again and exit

client = {
	name: "",
	age: 0,
	has_children: false,
	preferred_style: "",
	number_of_bedrooms: 0,
	account_open: false,
}

# USER INPUT

puts "What is the name of this client?"
client[:name] = gets.chomp

puts "What is the age of this client?"
client[:age] = gets.chomp.to_i

puts "Does this client have children?"
has_children = gets.chomp
client[:has_children] = has_children.upcase == "Y" || has_children.upcase == "YES" || has_children.upcase == "TRUE"

puts "What is the client's preferred style?"
client[:preferred_style] = gets.chomp

puts "How many bedrooms does this client have?"
client[:number_of_bedrooms] = gets.chomp.to_i

puts "Is this account open?"
account_open = gets.chomp
client[:account_open] = account_open.upcase == "Y" || account_open.upcase == "YES" || account_open.upcase == "TRUE"

# print client hash
client.each { |k, v| puts k.to_s + " - " + v.to_s }

puts "Enter an element you'd like to update, or 'none' to end"
update_input = gets.chomp
unless update_input.downcase == "none"
	if client.has_key? update_input.intern
		puts "What is the new value for that item?"
		new_value = gets.chomp
		case update_input.intern
		when :age, :number_of_bedrooms
			new_value = new_value.to_i
		when :has_children, :account_open
			new_value = (new_value.upcase == "Y" || new_value.upcase == "YES" || new_value.upcase == "TRUE")
		end
		client[update_input.intern] = new_value
	else
		puts "I can't store information for that."
	end
end

# print client hash again
client.each { |k, v| puts k.to_s + " - " + v.to_s }