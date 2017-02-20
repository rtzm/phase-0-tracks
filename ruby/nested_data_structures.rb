# A neighborhood object, that contains a hash of streets
# Streets each contain hash with data about the street, a hash of blocks, and an array of houses on each block
# Houses contain arrays of inhabitants
neighborhood = {
	mozart: {
		one_way: true,
		permit_parking: false,
		blocks: {
			_5400: [
				["Tom", "Lisa", "Brad"],
				["Jerry", "Jerome", "Jermaine"]
			],
			_5300: [
				["Stilton", "Stephen", "Sally"],
				["Charles"],
				["Krypton", "Tarnished", "Fannie"]
			]
		}
	},
	lakewood: {
		one_way: false,
		permit_parking: false,
		blocks: {
			_5400: [
				["Toneisha", "Miles", "James"],
				["Parker"]
			],
			_5300: [
				["Earl"],
				["Tilden", "Cermak", "Anton"]
			]
		}
	},
	farwell: {
		one_way: true,
		permit_parking: true,
		blocks: {
			_5400: [
				["Ogden", "Johnson"],
				["Boswell", "Samuel"]
			],
			_5300: [
				["Carlton", "Will", "Aunt Viv"],
				["Steve", "Austin", "Urkel"]
			]
		}
	},
}

puts "Who lives in the second house on 5400 Farwell... no, not Boswell, the other one."
puts neighborhood[:farwell][:blocks][:_5400][1][1]
puts "Is Mozart a one-way street?"
puts neighborhood[:mozart][:one_way]
puts "Do I need permit parking if I park here on Lakewood?"
puts neighborhood[:lakewood][:permit_parking]
puts "Do any of the houses on the 5300 block of Mozart have only one inhabitant?"
puts neighborhood[:mozart][:blocks][:_5300].any? { |house| house.one? }
puts "Who in the neighborhood has names beginning with 'S'?"
neighbors_with_s = []
neighborhood.each do |street_name, street_data|
	street_data[:blocks].each do |block_num, block_data|  
		block_data.each do |house| 
			neighbors_with_s += house.select { |neighbor| neighbor.chr.upcase == "S"}
		end
	end
end
puts neighbors_with_s