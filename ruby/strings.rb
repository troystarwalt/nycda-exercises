## REQUIREMENTS
# should have to populate 10 variables and have 10 string interpolations (#{}) for this assignment.
# The madlibs paragraph can be as long as you want, so long as there are at least 10 variables.

# use `gets` to populate variables
# replace variables in the madlib string and print it. The following is an example

# example madlib: http://cdn.rainbowresource.netdna-cdn.com/products/001471i1.jpg

#pairings:
# 	Tim, Ade, Michael
# 	Jeremy, Justin, Tristan
# 	Norvinder, Paula, Joel
# 	Alec, Troy, Christine

puts "Please enter a plural noun"
plural_noun = gets.chomp

madlib = "A one-act play to be performed by two #{plural_noun} in this room."

puts madlib
