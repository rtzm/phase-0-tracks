class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
	end
end

# RELEASE 0 DRIVER CODE
# nick = Santa.new
# nick.speak
# nick.eat_milk_and_cookies("Choco chip")

# RELEASES 1-3 DRIVER CODE
# santas = []
# santas << Santa.new("male", "black")
# santas << Santa.new("female", "Latina")
# santas << Santa.new("gnc", "white")
# santas << Santa.new("none", "Asian")

# santas.each {|s| s.speak }

# puts santas[0].gender
# santas[0].gender = "my new gender"
# puts santas[0].gender
# santas[0].get_mad_at("Dasher")
# puts santas[0].age
# santas[0].celebrate_birthday
# puts santas[0].age
# puts santas[0].ethnicity

# RELEASE 4 DRIVER CODE

gender_array = ["Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cisgender", "Cis Female", "Cis Male", "Cis Man", "Cis Woman", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender Variant", "Genderqueer", "Intersex", "Male to Female", "MTF", "Neither", "Neutrois", "Non-binary", "Other", "Pangender", "Trans", "Trans*", "Trans Female", "Trans* Female", "Trans Male", "Trans* Male", "Trans Man", "Trans* Man", "Trans Person", "Trans* Person", "Trans Woman", "Trans* Woman", "Transfeminine", "Transgender", "Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-Spirit"]
ethnicity_array = ["White", "Black or African American", "Asian", "Native American and Alaska Natives", "Native Hawaiians and Other Pacific Islanders", "Two or more races", "Some other race"]
500.times do |x|
	santa = Santa.new(gender_array.sample, ethnicity_array.sample)
	rand(141).times {|y| santa.celebrate_birthday}
	puts "This santa is #{santa.age} years old, #{santa.gender} and #{santa.ethnicity}."
end