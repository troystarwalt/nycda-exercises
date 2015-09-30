#groups
# Ade, Justin, Troy
# Tim, Jeremy Christine
# Tristan, Alec, Joel
# Michael, Paula, Norvinder
# create a branch called `poker` and make a PR against shurane/master using `yourusername/poker` branch

#Steps
# 1.) Play a hand
# 2.) Run that hand through a loop to check if it is equal to any winning hand
# 3.) If so, puts winning hand with flush
# 4.) elsif check for the next winning hand
# 5.) continue until you find something
# 6.) if you don't find anything return not a winning hand.


class Card
	# suit = spades, clubs, hearts, diamonds
	# rank = A, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K
	attr_accessor :type
	def initialize(type)
		puts "Playing Poker"
		@type = type
	end

	def to_s
		"PokerHand(#{@type})"
	end

end

class PokerHand
	# has 5 Cards	
	# has the following methods:

	# pair = [A, A, _, _, _]
	# triple = [K, K, _, K, _]
	# four_of_a_kind = [Q, Q, _, Q, Q]
	# flush = all cards have the same suit
	# bonus: straight
	def initialize(pokerHands)
		hands.each do |h|
			if h.
	
end

hand1 = PokerHand.new([
	Card.new("A","Hearts"),
	Card.new("A","Spades"),
	Card.new("K","Clubs"),
	Card.new("9","Hearts"),
	Card.new("3","Diamonds")
])

hand2 = PokerHand.new([
	Card.new("A","Hearts"),
	Card.new("Q","Hearts"),
	Card.new("K","Hearts"),
	Card.new("9","Hearts"),
	Card.new("3","Hearts")
])

hand3 = PokerHand.new([
	Card.new("A", "Hearts")
	Card.new("Q", "Hearts")
	Card.new("Q", "Clubs")
	Card.new("Q", "Spades")
	Card.new("10", "Hearts")
])

hand4 = PokerHand.new([
	Card.new("J", "Hearts")
	Card.new("3", "Clubs")
	Card.new("3", "Spaeds")
	Card.new("3", "Hearts")
	Card.new("3", "Diamonds")
])



puts hand1.pair
puts hand1.triple
puts hand1.flush

puts hand2.pair
puts hand2.triple
puts hand2.flush


