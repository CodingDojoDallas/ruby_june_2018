
first_name = "Derek"
last_name = "Han"

puts "My name is"
puts first_name
puts last_name

puts "My name is #{first_name} #{last_name}"

# for String
puts "My First name is %s and My Last name is %s"% [first_name, last_name]

z = 50
puts "Value of z is %d" % z
puts "Value of z is #{z}"
puts "Value of z is %s" % z

puts "I am 5'10\" tall"

puts "\t\tI am\n 5'10\" tall"

x = puts "hello world"
puts x

x = "CodingDojo"

puts x.capitalize
puts x.upcase
puts x.downcase

puts x.include?("Dojo")
puts x.include?("dojo")

puts "This word has the word 'Dojo'" if x.include? "Dojo"

puts "This word has the word 'Dojo'" if x.include? "dojo"


y = "john, charles, matt, joe"
z = ""
puts y.split(",")
puts y.split(",").to_s #to make arr of strings

puts "Y is empty" if y.empty?
puts "Z is empty" if z.empty?


