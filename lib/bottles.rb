class Bottles

	def verse(numberOfBottles)

		result = numberOfBottles.to_s + " bottles of beer on the wall, " \
				+ numberOfBottles.to_s + " bottles of beer.\n"\
				+ "Take one down and pass it around, " \
				+ (numberOfBottles - 1).to_s + " bottle" 
		if (numberOfBottles - 1 > 1) 
				result += "s"
		end
		result += " of beer on the wall.\n"

	end

end