puts "For loop with Range ===================="
for i in (0..10) do
	puts "for: " + i.to_s
end

puts "While loop with Range ===================="
desert = 0
while desert < 10 do
	puts "while: " + desert.to_s
	desert += 1

end

puts "Range ======================="
(0..100).class() # Range
(0..100).to_a # converts from Range -> Array
# similar to...
# 	for (var i=0; i<=100; i++) { ... }

(0..100).step(2).to_a
# for (var i=0; i<=100; i+=2) { ... }

(0..100).step(11).to_a
# for (var i=0; i<=100; i+=11) { ... }

(0..10).each do |i|
	puts "each: " + i.to_s
end

puts "upto  ======================="
1.upto(10).class # Enumerator
1.upto(10) do |j|
	puts "upto: " + j.to_s
end

# 1 to 100..
# if divisible by 3, print out Fizz
# elsif divisible by 5, print out Buzz
# elsif divisible by 3 and 5, print out FizzBuzz
# else print out the number

# 1
# 2
# Fizz
# 3
# 4
# Buzz
# 6
# 7
# 8
# ....
# 14
# FizzBuzz
# 16
# ....