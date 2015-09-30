#groups

# Ade, Justin, Troy
# Tim, Jeremy Christine
# Tristan, Alec, Joel
# Michael, Paula, Norvinder

# create a branch called `poker` and make a PR against shurane/master using `yourusername/poker` branch

class Card
	# suit = spades, clubs, hearts, diamonds
	# rank = A, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K
end

class PokerHand
	# has 5 Cards	
	# has the following methods:

	# pair = [A, A, _, _, _]
	# triple = [K, K, _, K, _]
	# four_of_a_kind = [Q, Q, _, Q, Q]
	# flush = all cards have the same suit
	# bonus: straight
	
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

puts hand1.pair
puts hand1.triple
puts hand1.flush

puts hand2.pair
puts hand2.triple
puts hand2.flush