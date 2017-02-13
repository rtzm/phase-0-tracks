puts "How many employees?"
employee_number = gets.chomp

employee_number.to_i.times do 
	results = ""
	now = Time.new
	age_wrong = false
	hates_garlic = false
	waives_insurance = false
	allergic_to_sun = false

	puts "What is your name?"
	employee_name = gets.chomp
	puts "How old are you?"
	employee_age = gets.chomp
	puts "What year were you born?"
	employee_birthyear = gets.chomp
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	employee_wants_garlic = gets.chomp
	if employee_wants_garlic.upcase == "N" || employee_wants_garlic.upcase == "NO"
		hates_garlic = true
	end
	puts "Would you like to enroll in the company’s health insurance?"
	employee_wants_health_insurance = gets.chomp
	if employee_wants_health_insurance.upcase == "N" || employee_wants_health_insurance.upcase == "NO"
		waives_insurance = true
	end
	allergies_done = false
	until allergies_done
		puts "Please name an allergy that you have. If you don't have any more, type 'done'"
		allergy = gets.chomp
		if allergy.upcase == "DONE"	
			allergies_done = true
		elsif allergy.upcase == "SUNSHINE"
			allergic_to_sun = true
		end
	end

	# check employee age against year, adjusting for if their birthday hasn't come up yet
	if employee_age.to_i == (now.year - employee_birthyear.to_i) || employee_age.to_i == (now.year - employee_birthyear.to_i - 1)
		results = "Probably not a vampire."
	else
		age_wrong = true
	end

	if allergic_to_sun || (age_wrong && (hates_garlic || waives_insurance))
		results = "Probably a vampire."
	else
		# this condition (lied about age, but likes garlic and wants insurance) wasn't included explicitly in instructions
		results = "Probably not a vampire, but undead?!"
	end

	if age_wrong && hates_garlic && waives_insurance
		results = "Almost certainly a vampire."
	end

	if employee_name.upcase == "Drake Cula".upcase || employee_name.upcase == "Tu Fang".upcase
		results = "Definitely a vampire."
	end

	puts employee_name + ": " + results
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."