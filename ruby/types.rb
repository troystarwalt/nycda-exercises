puts 5.class
puts "things".class
puts [].class
puts {}.class
puts true.class
puts false.class
puts nil.class # very similar to `null` in Javascript
puts :a.class

attendanceToday = "false"

puts attendanceToday == "true"

some_array = [0,1,2,3,4,5]
some_hash = {:a => 1, :b => 2, :c =>3}

puts some_array.class
puts some_hash.class

puts "Paul McCartney" + "is here"
puts "John Lennon", "is here"
print "Ringo Starr", "is here"
print "George Harrison", "is here", "\n"

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

if false
	puts "You have a cool name."
elsif false
	puts "You have a pretty okay name."
elsif false
	puts "Your name is getting long in the tooth"
else
	puts "Your name is too long."
end

# - your first name
# - your last name
# - your zip code
# - if (first_name + last_name).length < 6:
#     you have a cool name
# - elsif ....length < 10:
#     you have a pretty okay name
# - elseif ...length < 15:
#     your name is getting long in the tooth
# - else:
#     your name is too long! You should change it

# puts "Hello <firstname>, your lastname '<lastname>' is pretty cool. I live in <zipcode> too!"
# puts "Hello" + last_name