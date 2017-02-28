require_relative 'wordgame'

describe Wordgame do
	let(:wordgame) { Wordgame.new("test string!") }
	it "makes a hint string" do
		expect(wordgame.make_hint_string).to eq "_ _ _ _  _ _ _ _ _ _ !"
	end		

	it "checks if a guess is valid single letter" do
		expect(wordgame.check_guess_is_letter("t")).to eq true
	end
	
	it "takes a new guess and returns true if found" do
		expect(wordgame.add_new_guess("t")).to eq true
	end

	it "checks if guess is a new guess" do
		wordgame.add_new_guess("t")
		expect(wordgame.check_guess_is_new("t")).to eq false
	end

	it "calculates the max number of wrong guesses" do
		expect(wordgame.calculate_max_wrong_guesses).to eq 2
	end

	it "checks for game loss" do
		wordgame.add_new_guess("a")
		wordgame.add_new_guess("b")
		expect(wordgame.check_game_end).to eq "lose"
	end

	it "checks for game win" do
		wordgame.add_new_guess("t")
		wordgame.add_new_guess("e")
		wordgame.add_new_guess("s")
		wordgame.add_new_guess("r")
		wordgame.add_new_guess("i")
		wordgame.add_new_guess("n")
		wordgame.add_new_guess("g")
		expect(wordgame.check_game_end).to eq "win"
	end

	it "checks for game still going on" do
		wordgame.add_new_guess("t")
		wordgame.add_new_guess("e")
		wordgame.add_new_guess("s")
		wordgame.add_new_guess("r")
		wordgame.add_new_guess("i")
		wordgame.add_new_guess("n")
		expect(wordgame.check_game_end).to eq false
	end

	it "throws false for unacceptable phrases" do
		expect(Wordgame.check_phrase("423425")).to eq false
	end

	it "throws true for phrases with at least one letter" do
		expect(Wordgame.check_phrase("423425a")).to eq true
	end
end