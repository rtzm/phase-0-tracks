# Search Array will take an array and integer from a user.
# We want to get the 'length' of an array.
# Loop through the index of the array. e.g. 1,2,3,etc.
# Compare the user's array to the interger at each index position.
# If they are the same return the index's position.
# If loop concludes return 'Nil'.


def search_array(arr, int)
  array_length = arr.length
  i = 0
  while i <= (array_length-1)
    if arr[i] == int
      return i
    end
    i += 1
  end
  return nil
end
arr = [1, 2, 3, 4, 5, 6]
puts search_array(arr, 2)

# Build an empty array to capture the numbers.
# Create a loop that runs a certain number of times by the user.
# Check if the current length of the array is 1 or 2.
# If so, add 0 or 1 to the array.
# By adding the last two numbers of the array will produce the last number in sequence.
# Each time we will add a number at the end of the array.
# Return the array.


def fib(int)
  arr = []
  until arr.length == int
    if arr.length == 0
      arr << 0
    elsif arr.length == 1
      arr << 1
    else
      arr << (arr[-2] + arr[-1])
    end
  end
  return arr
end
puts fib(100)

  # Bubble Sort Algothrim
  # A loop will go through the entire array but start with the first two numbers and compare them. While going through the entire array, it will go to each index
  # Sample array will compare the 1st & 2nd integers to see which one is greater within that array. If the 2nd integer is greater than the 1st integer it will reverse the order.
  # Sample array of [8, 5, 2, 3] compare each pair of intergers at index 0 & 1 / index 1 & 2 / index 2 & 3 and so on.
  # The first pass through if the 1st number is greater than the 2nd number then they will swap. So [5, 8, 2, 3].
  # It will compare the other numbers so [5, 2, 8, 3]
  # Then [5, 2, 3, 8]
  # Keeps passing through until it knows it cannot swap anymore nunmbers.



























