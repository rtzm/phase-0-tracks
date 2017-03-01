# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split string of words into a separated array
  # Add each item as a key to the hash, using the adding method, with default value of 1
  # Print the list to the console using the printing method
# output: Hash, with keys as item name, and values is a quantity

def create_list(string_of_items)
	shopping_list = Hash.new
	array_of_items = string_of_items.split(" ")
	default_value = 1
	array_of_items.each do |item|
		shopping_list[item] = default_value
	end
	shopping_list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # Check if quantity was passed to the method, and set to default if not
  # Add item as a key to the hash, with quantity
# output: Hash with additional item

def add_item(shopping_list, item_name, qty=1)
	shopping_list[item_name] = qty
end

# Method to remove an item from the list
# input: list, item name
# steps:
  # Delete entry from hash where the key is equal to the item name
# output: Hash, minus that item

def remove_item(shopping_list, item_name)
	shopping_list.delete(item_name)
end

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps:
  # Update the value of the entry where the key is equal to the item name, to a new value of quantity
# output: Hash with updated item quantity

def update_quantity(shopping_list, item_name, qty)
	shopping_list[item_name] = qty
end

# Method to print a list and make it look pretty
# input: list
# steps: 
  # For each item in the list
    # Print item and then value and then go to next line
# output: String

def print_list(shopping_list)
	shopping_list.each do |key,value|
		puts " - " + key.upcase + " ..... " + value.to_s
	end
end

# DRIVER CODE
new_shopping_list = create_list("carrots apples cereal pizza")
add_item(new_shopping_list, "bananas", 3)
add_item(new_shopping_list, "turkey")
puts new_shopping_list
remove_item(new_shopping_list, "pizza")
puts new_shopping_list
update_quantity(new_shopping_list, "bananas", 50)
puts new_shopping_list
print_list(new_shopping_list)