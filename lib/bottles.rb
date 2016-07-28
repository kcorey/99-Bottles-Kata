class Bottles

	def verse(numberOfBottles)

		result = numberOfBottles.to_s + " " + bottlesName(numberOfBottles) + " of beer on the wall, " \
				+ numberOfBottles.to_s + " " + bottlesName(numberOfBottles) + " of beer.\n"\
				+ "Take " + pronoun(numberOfBottles) + " down and pass it around, " \
				+ countInWords(numberOfBottles - 1) + " " + bottlesName(numberOfBottles - 1) \
				+ " of beer on the wall.\n"

	end

	def pronoun(numberOfBottles)
		if (numberOfBottles == 1)
			"it"
		else
			"one"
		end
	end

	def bottlesName(numberOfBottles)
		if (numberOfBottles == 1)
			"bottle"
		else
			"bottles"
		end
	end

	def countInWords(numberOfBottles)
		if (numberOfBottles == 0)
			"no more"
		else
			numberOfBottles.to_s
		end		

	end
end