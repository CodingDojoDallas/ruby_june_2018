puts "I am a string"
puts 'I am also a string'

puts "I am an instance of".class

puts String.new("I am an instance of the String class")
#how to make a string

#Interpolation
puts "24 plus 8 is #{24 + 8}"
puts '24 plus 8 is #{24 + 8}'
puts "24 plus 8 is " + (24 + 8).to_s
# puts "24 plus 8 is " + (24 + 8) => TypeERORR

#capitalize
name = "fRoBe"
puts name.capitalize
puts name
puts name.capitalize!
puts name
#downcase
puts name.downcase
puts name
puts name.downcase!
puts name
#empty
puts "".empty?
puts "hello".empty?
#length
puts "hello".length
#split
puts "hello".split
puts "hello".split("")
puts "hello".split("").to_s
puts "oscar@gmail.com".split("@")

#Beaware the Bang
str = "bar"
puts str[0]
puts str 

word = "hello"
puts word.capitalize
puts word
word.capitalize!
puts word
puts word.upcase
puts word
puts word.upcase!
puts word







