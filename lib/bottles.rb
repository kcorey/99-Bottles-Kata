class Bottles

	def song

		result = verses(99,0)
	end

	def verses(startNumberOfBottles, finishNumberOfBottles)

		result = ""
		iterationCount = startNumberOfBottles
		while iterationCount >= finishNumberOfBottles
			if (result != "")
				result += "\n"
			end
			result += verse(iterationCount)
			iterationCount -= 1
		end		

		return result
	end

	def verse(numberOfBottles)

		nextNumber = numberOfBottles - 1 
		if (nextNumber < 0)
			nextNumber = 99
		end

		result = countInWords(numberOfBottles).capitalize + " " + bottlesName(numberOfBottles) + " of beer on the wall, " \
				+ countInWords(numberOfBottles) + " " + bottlesName(numberOfBottles) + " of beer.\n"\
				+ newNumberClause(numberOfBottles) \
				+ countInWords(nextNumber) + " " + bottlesName(nextNumber) \
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

	def newNumberClause(numberOfBottles)

		if (numberOfBottles == 0) 
			"Go to the store and buy some more, "
		else
			"Take " + pronoun(numberOfBottles) + " down and pass it around, " 
		end
	end

end