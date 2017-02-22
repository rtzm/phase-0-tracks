## release 0

def do_something_twice
	puts "before"
	yield 
	yield
	puts "after"
end

do_something_twice { puts "Look at me!" }


## release 1

# array

instruments = ["tuba","basson","viola","bass"]


# hash

composers = {
	Bach: "Fugue",
	Strass: "String Quartet",
	Beethoven: "Symphony in Awesomeness",
}

puts instruments
instruments.each { |x| puts "Play the #{x}!" }
puts instruments

puts composers
composers.each { |k, v| puts "Now playing #{k}'s #{v}."}
puts composers

puts instruments
instruments.map! { |i| i.capitalize  }
puts instruments


## release 2

### problem 1

arr_num = [0,1,2,3,4,5]

puts arr_num
arr_num.reject! { |num| num < 3 }
puts arr_num


hash_num = {
	a: 0,
	b: 1,
	c: 2,
	d: 3,
	e: 4,
	f: 5
}

puts hash_num
hash_num.reject! {|k, v| v < 3 }
puts hash_num

#################

### problem 2

arr_num = [0,1,2,3,4,5]

puts arr_num
arr_num.select! { |num| num < 3 }
puts arr_num




hash_num = {
	a: 0,
	b: 1,
	c: 2,
	d: 3,
	e: 4,
	f: 5
}

puts hash_num
hash_num.select! {|k, v| v < 3 }
puts hash_num

##############

### problem 3

arr_num = [0,1,2,3,4,5]

puts arr_num
arr_num.keep_if { |num| num < 3 }
puts arr_num


hash_num = {
	a: 0,
	b: 1,
	c: 2,
	d: 3,
	e: 4,
	f: 5
}


puts hash_num
hash_num.keep_if {|k, v| v < 3 }
puts hash_num



##################

### problem 4

arr_num = [0,1,2,3,4,5]

puts arr_num
new_array = arr_num.drop_while { |num| num.zero? }
puts new_array


hash_num = {
	a: 0,
	b: 1,
	c: 2,
	d: 3,
	e: 4,
	f: 5
}


puts hash_num
# doesn't work, turns it into an array arrgggh!
new_hash = hash_num.drop_while {|k, v| v.zero? }
p new_hash