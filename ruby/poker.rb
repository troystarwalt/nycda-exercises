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


# class Card
# 	suit = ["spades", "clubs", "hearts", "diamonds"]
# 	rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
# 	attr_accessor :suit, :rank
# 	def initialize(type)
# 		puts "Playing Poker"
# 		@type = type
# 	end

# # aceSpades = Card.new["A", "spades"]
# # aceClubs = Card.new("A", "clubs")
# # aceHearts = Card.new("A", "hearts")
# # aceDiamonds = Card.new("A", "diamonds")
# # twoSpades = Card.new("2", "spades")
# # threeSpades = Card.new("3", "spades")
# # fourSpades = Card.new("4", "spades")
# # fiveSpades = Card.new("5", "spades")

# end

# a rose by any other name would smell just as sweet?
# same with these variables
class Card
	attr_accessor :rank
	attr_accessor :suit
	def initialize(rank, suit)
		# puts "Card.initialize()", rank, suit
		@rank = rank
		@suit = suit
	end

	def to_s
		#I want this to print Card(rank, suit)
		# so for 6 of Hearts -> Card(6, hearts)
		#        7 of Spades -> Card(7, spades)
		"Card(#{@rank}, #{@suit})"
	end

end

# queenClubs = Card.new("A", "hearts")
# jackOfAllTrades = Card.new("10", "clubs")

# puts queenClubs
# puts jackOfAllTrades

# def add_two(x)
# 	2+x
# end

# puts add_two(5)
# puts add_two(7)

class PokerHand
	# has 5 Cards	
	# has the following methods:

# 	pair = [A, A, _, _, _]
# 	triple = [K, K, _, K, _]
# 	four_of_a_kind = [Q, Q, _, Q, Q]
# 	flush = 
# 	bonus: straight
	def initialize(cards)
		puts "PokerHand.initialize()", cards
		@cards = cards
	end


	def pair
		cardCount = {}
		@cards.each do |card|
			card.rank
			if cardCount[card.rank].nil?
			cardCount[card.rank] = 1
			else
				cardCount[card.rank] += 1
			end
		end
		puts cardCount

		cardCount.keys.each do |k|
			if cardCount [k]>= 2
				return true
			end
		end
		return false	
	end
	def to_s
		@cards.to_s
	end
# end
 # myarray = myhand4.each {|x| puts "#{x},#{y}"}
 # x = 	
end

hand1 = PokerHand.new([
	Card.new("A","Hearts"),
	Card.new("A","Spades"),
	Card.new("K","Clubs"),
	Card.new("9","Hearts"),
	Card.new("3","Diamonds")
])

puts hand1.pair

hand2 = PokerHand.new([
	Card.new("A","Hearts"),
	Card.new("Q","Hearts"),
	Card.new("K","Hearts"),
	Card.new("9","Hearts"),
	Card.new("3","Hearts")
])

puts hand2.pair

hand3 = PokerHand.new([
	Card.new("A", "Hearts"),
	Card.new("Q", "Hearts"),
	Card.new("Q", "Clubs"),
	Card.new("Q", "Spades"),
	Card.new("10", "Hearts")
])

puts hand3.pair

hand4 = PokerHand.new([
	Card.new("J", "Hearts"),
	Card.new("3", "Clubs"),
	Card.new("3", "Spades"),
	Card.new("3", "Hearts"),
	Card.new("3", "Diamonds")
])

puts hand4.pair