# class Dinosaur
# 	def initialize
# 		puts "ROAR"
# 	end
# end

# d = Dinosaur.new

# d.class == Dinosaur.new
# String.new("abcdef") == "abcdef"

class Person
	def initialize(firstName="No",
				   lastName="Face",
				   zipcode="11105")
		@firstName = firstName
		@lastName = lastName
		@zipcode = zipcode
		puts("Person.initialize()")
	end

	def full_name
		puts("Person.full_name()")
		@firstName + " " + @lastName
	end

	def to_s
		puts("Person.to_s()")
		"#{full_name}, #{@zipcode}"
	end
end

## initialize() is the constructor on the Person
## Person.new -> initialize(..., ...)

# ehtesh = Person.new("Ehtesh")
# zach = Person.new("Zach")

# puts ehtesh
# puts zach

# a class is a lot like a recipe...
# it gives you instructions on how to make said recipe (an instance of that class)
# some things are public, and some are private
class ApplePie
	attr_accessor :ingredients

	def initialize(ingredients)
		puts "making apple pie"
		@ingredients = ingredients
	end

	def to_s
		"ApplePie(#{@ingredients})"
	end

	def self.whatIngredientsDoINeed
		puts "You need apples. Definitely. Otherwise, you don't have an apple pie. Duh."
	end
end

class Dessert
	def initialize(desserts)
		desserts.each do |d|
			if d.ingredients.include?("apples")
				puts "heresy!"
			end
		end
		@desserts = desserts

	end
end

regularApplePie = ApplePie.new([
	"mcintosh apples",
	"white sugar", 
	"cinnamon", 
	"lard crust"])
exoticApplePie = ApplePie.new([
	"honey crisp apples", 
	"peaches", 
	"brown sugar", 
	"cinnamon", 
	"butter crust"])

dessert = Dessert.new([regularApplePie, exoticApplePie])

puts regularApplePie.to_s