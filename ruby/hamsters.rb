puts "Gather Data on Hamsters"
puts "Please answer the following questions:"
puts "Enter the Hamster's name:"
hamster_name = gets.chomp
puts "Enter the volume level (level of squeakiness):"
volume = gets.chomp.to_i
puts "Enter the fur color:"
fur_color =gets.chomp
puts "Is it adoptable (y/n):"
adoptable = gets.chomp
if adoptable.upcase == "Y" || adoptable.upcase == "YES"
	adoptable = true 
else
	adoptable = false
end
puts "Enter the estimated age of your Hamster (optional):"
est_age = gets.chomp
if est_age == ""
	est_age = nil 
else
	est_age = est_age.to_i
end

puts "Our hamster's name is #{hamster_name}, and their squeakiness is level #{volume}."
puts "Their fur color is #{fur_color}, and they are#{"n't" unless adoptable} adoptable."
puts "Their estimated age is #{if est_age; est_age; else "unknown"; end}."