#===================print 1-255
# p (1..255).find_all{|i|i}, "print 1-255"

#===================print odd numbers between 1-255
# p (1..255).reject{|i| i%2 == 0}, "print odd numbers between 1-255"

#===================print sum
# arr = (1..255).find_all{|i|i}
# sum =0
# arr.each {|i| 
# 	sum += i
# 	p "New number: #{i} Sum: #{sum}"
# }

#===================Just Sum
# p (1..255).inject(0) {|sum, i| sum + i}

#===================iterating through an array
# x= [1,3,5,7,9,13]
# x.each{|i| print i, "-"}
# print "\n","dslkjfl\n"

# #find Max
# x= [1,3,5,7,9,13]
# p x.max

#=================== Get Average
# x= [1,3,5,7,9,13]
# sum = 0
# x.each{|i| sum += i }
# ave = sum / x.length
# p ave

# p x.inject{ |sum, el| sum + el }.to_f / x.size
# p x.inject(0){ |sum, el| sum + el }.to_f / x.size
# p x.reduce(:+) / x.size.to_f

#===================Array with Odd Numbers
# p (1..255).reject{|i| i%2==0}

#===================Greater Than Y
# newArr = []
# y = 3
# [1,3,5,7].each{|i| newArr.push(i) if i > y }
# p newArr

#===================Square the values

# y = []
# [1, 5, 10, -2].each{|i| y.push(i*i)}
# p y

#===================Eliminate Negative Numbers
# a = [1,5,10,-2]
# p [1,5,-10,-2].collect! {|i| if i < 0 then i = 0 else i end}


#===================Max, Min and Average
# arr = [1, 5, 10, -2]

# mma = { :max => arr.max, :min => arr.min, :ave => arr.reduce(:+) / arr.size.to_f }
# p mma[:max], mma[:min], mma[:ave]

#===================Shifting the Value in the Array
# x = [ 1, 5, 10, 7, -2 ]
# x.delete_at(0)
# p x.push(0)

#===================Number to string

x = [-1, -3, 2]
p x.collect!{|i| if i < 0 then i = "Dojo" else i end}










