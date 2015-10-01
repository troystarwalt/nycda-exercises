
class Animal
	attr_accessor :legs

	def initialize
		puts "Animal.initialize"
	end

	def sound
		puts "I am an animal"
	end

end

# class Cat extends Animal { ... }
class Cat < Animal
	def initialize
		puts "Cat.initialize"
	end
	def sound
		super
		puts "meow"
	end

end

class Aristocat < Cat
	def initialize
		puts "Aristocat.initialize"
	end
	def sound
		super
		puts "Oh, shucks, Napoleon. That ain't nothin' more but a little ol' cricket bug"
	end
end

class SpaceAnimal < Animal
	def initialize
		puts "SpaceAnimal.initialize"
	end
	def sound
		puts "Mission Complete!"
	end
end

class Falco < SpaceAnimal
	def initialize
		puts "Falco.initialize"
	end
	def sound
		puts "Piece of cake."
	end
end

# dog = Animal.new
# dog.sound

# cat = Cat.new
# cat.sound

# fox = SpaceAnimal.new
# fox.sound

ac = Aristocat.new
ac.sound

# f = Falco.new
# f.sound