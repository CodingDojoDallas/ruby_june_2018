#!/usr/bin/rubyy

a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]
# return the first value or 0th index of the array
# puts a.to_s
p " plus and string: ", (a+b)
# ["Matz", "Guido", "Dojo", "Choi", "John", 5, 6, 9, 3, 1, 2, 4, 7, 8, 10]


x = (a+b)-c
p x
# ["Matz", "Guido", "Choi", "John", 5, 6, 3, 1, 2, 4, 7, 8, 10]



p a[0] #Matz
p a[1] #Guido

puts " .class: ", b.class #Array

puts " .shffle and .join: ", b.shuffle.join("-")
puts " .shffle and .join: ", b.shuffle.join(", ")

# .delete
a.delete("Choi")
puts " .delete(\"Choi\")", a.to_s
# ["Matz", "Guido", "Dojo", "John"]


a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]

#using .at
puts " .at(1): ", a.at(1)
# Guido

#using .push
puts " .push: ", b.push("Derek").to_s
# [5, 6, 9, 3, 1, 2, 4, 7, 8, 10, "Derek"]



#using .pop
b.pop()
puts " .pop(): ", b.to_s
# [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]



#using .length
puts ".length: Length of a is #{a.length}"
# Length of a is 4



#using .join
puts " .join: ", a.values_at(1,3).join(' or ')
#Guido or John


a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]
#using .reverse
puts " .reverse: ", a.reverse.to_s
# ["John", "Dojo", "Guido", "Matz"]




#using .shuffle
puts " .shuffle: ", b.shuffle.to_s
# [6, 9, 5, 1, 7, 8, 4, 10, 3, 2]



# using .sort
puts " .sort: ", b.sort.to_s
puts " .sort: ", b.sort{|a,b| b<=>a}.to_s
#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]


a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]

#using slice
puts " .slice: ", a.slice!(2), a.to_s #["Matz", "Guido", "John"]
# Dojo (What???)
# ["Matz", "Guido", "John"]




#using insert
e = %w{ a b c d }
puts " .insert: ", e.insert(2, 99).to_s #["a", "b", 99, "c", "d"]
# ["a", "b", 99, "c", "d"]



#Alternative way of creating an array %w{}
d = %w{Derek Steven Cameron}
puts ".values_at and .join: ", d.values_at(1,2).join(' and ') 
# Steven and Cameron



