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

# --- Bubble Sort Algorithm ---
# Loop through the array multiple times until variable "no swaps" is true
  # Set no swaps to true
  # Set i as index of current iteration
  # Loop through the array while i+1 is less than the length of the array
    # If value at index i of array is greater than value at index i+1 of array, then:
      # substitute values at indexes i and i+1 with the reverse of those values (i+1 and i)
      # set variable no swaps to false
    # Increment i by 1
# return array

def bubble_sort(arr)
  no_swaps = false
  until no_swaps
    no_swaps = true
    i = 0
    while (i+1) < arr.length
      if arr[i] > arr[i+1]
        swapped_values = arr.slice!(i,2)
        arr.insert(i, swapped_values[1], swapped_values[0])
        no_swaps = false
      end
      i += 1
    end
  end
  return arr
end

test = [5, 32, 7, 7, 2, 0, 1, 80]

print bubble_sort(test)