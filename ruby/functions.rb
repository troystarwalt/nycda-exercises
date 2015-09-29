# • Adds five to argument given
def addFive(whatsmyname)
	whatsmyname + 5
end

# puts addFive(5)

# for i in (0..1000).step(50) do
# 	puts i.to_s + " " + addFive(i).to_s
# end

# • Multiplies argument given by 15
def multiplyBy15(wineandvinegar)
	wineandvinegar * 15
end

# puts multiplyBy15(1) # 15
# puts multiplyBy15(2) # 30
# puts multiplyBy15(11) # 165

# • Performs a mathematical operation using four integer and/or float arguments
def mathsy(twas, brillig, slithy, toves)
	# PEMDAS, order of operations
	(twas + brillig) / slithy + toves
end

# puts mathsy(5, 1, 1000, 123456789)

# • Prints the argument given four times
def printFourTimes(word)
	print word * 4
	puts
end

def printFourTimesSecond(word)
	4.times do |x|
		print word
	end
	puts
end

# printFourTimes("Hey ")
# printFourTimesSecond("now ")

# • Prints an uppercase version of the argument given
def shout(directionalInfluence)
	directionalInfluence.upcase
end

# puts shout("show me your moves")
# puts shout("pk fire")