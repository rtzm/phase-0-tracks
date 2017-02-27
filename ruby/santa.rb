class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	end

	def speak
		puts "Ho, ho ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!"
	end
end

# RELEASE 0 DRIVER CODE
# nick = Santa.new
# nick.speak
# nick.eat_milk_and_cookies("Choco chip")

# RELEASE 1 DRIVER CODE
santas = []
santas << Santa.new("male", "black")
santas << Santa.new("female", "Latina")
santas << Santa.new("gnc", "white")
santas << Santa.new("none", "Asian")

santas.each {|s| s.speak }