a = [3,5,1,2,7,9,8,13,25,32]

#########Sum of all numbers in the array
sum = 0
a.each{|i| sum += i}
p sum

############function return numbers are greater than 10
def great10 arr
	p arr.reject{|i| i <10}
end
great10 a

name = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

puts name.shuffle

def nameOver5 arr
	name5 = []
	arr.find_all{|i| name5.push(i) if i.length > 5 }
	p name5
end
nameOver5 name

alpha = ('a'..'z').to_a
p alpha.shuffle.last
p vo = alpha.shuffle.first
if ["a", "e", "i", "o", "u"].include? vo
	p "It's a vowel!!"
else 
	p "No, It's not a vowel"
end
################### 10 random numbers between 55-100
p nums = 10.times.map{ 55 + Random.rand(45)}
p nums.sort!
p nums.first
p nums.last

###################random string that is 5 characters long
p (0...5).map { (65 + rand(26)).chr }.join
p (0...5).map { ('a'..'z').to_a[rand(26)] }.join

o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
string = (0...5).map { o[rand(o.length)] }.join
p string

p 10.times.map { (0...5).map { (65 + rand(26)).chr }.join }
