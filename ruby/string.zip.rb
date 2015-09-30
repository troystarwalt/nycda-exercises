"Eazy-E".split("")
	.zip(
		 "Ade".split(""),
		 "Alec".split(""),
		 "Christine".split(""),
		 "Joel".split(""),
		 "Justin".split(""),
		 "Michael".split(""),
		 "Norvinder".split(""),
		 "Paula".split(""),
		 "Stephanie".split(""),
		 "Taimur".split(""),
		 "Tristan".split(""),
		 "Troy".split(""))
	.each do |letters|
		letters.each do | l |
			if !l
				print " "
			else
				print l
			end
			print " "
		end
		puts ""
end