# module Shout
# 	def self.yell_angrily(words)
#   		words + "!!!" + " :("
#   	end

#   	def self.yelling_happily(words)
#   		words + "!!!" + " :) *blush*"
#   	end
# end

# puts Shout.yell_angrily("Testing anger")
# puts Shout.yelling_happily("Testing happiness")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	def yelling_happily(words)
		words + "!!!" + " :) *blush*"
	end
end

class Teacher
	include Shout
end

class Parent
	include Shout
end

msfrizzle = Teacher.new
puts msfrizzle.yell_angrily("I didn't go to teacher school to deal with this")
puts msfrizzle.yelling_happily("This is exactly why I went to teacher school")

dad = Parent.new
puts dad.yell_angrily("I didn't go to dad school to deal with this")
puts dad.yelling_happily("This is exactly why I went to dad school")
