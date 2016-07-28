class Bottles

	def verse(numberOfBottles)

		numberOfBottles.to_s + " bottles of beer on the wall, " \
				+ numberOfBottles.to_s + " bottles of beer.\n"\
				+ "Take one down and pass it around, " \
				+ (numberOfBottles - 1).to_s + " bottles of beer on the wall.\n"

	end

end