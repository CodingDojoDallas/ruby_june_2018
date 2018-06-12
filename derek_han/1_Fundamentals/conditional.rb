x = 0

if x > 2
	puts "x is greater than 2"
elsif x < 2 and x > 0
	puts "x is 1"
else
	puts "I can't guess the number"
end

		
y = 5

puts "y is not 2" if y != 2
puts "y is greater than 2" if y > 2

puts "y is not 2" unless x==2



age = 22
case age
when 0..2
	puts "baby"
when 3..6
	puts "little child"
when 7..12
	puts "child"
when 13..18
	puts "youth"
else
	puts "adult"
end

if age >= 21
	puts "Welcome to the party"
else
	puts "Not yet"
end

number = 15
if number % 3 == 0 && number % 5 == 0
	puts "FizzBuzz"
elsif number % 3 == 0
	puts "Fizz"
elsif number % 5 == 0
	put "FizzBuzz"
end
		
if !(age < 21)
	puts "Welcome to the party"
else
	puts "Not yet"
end
		

unless age < 21
	puts "Welcome to the party"
else
	puts "Not yet"
end

if ""
	puts "I am positive"
end
if 0
	puts "I am positive"
end

unless nil
	puts "I am negative"
end
unless false
	puts "I am negative"
end

puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false




















