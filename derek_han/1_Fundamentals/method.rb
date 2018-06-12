# input
def hello_world
	puts "hello world"
end
hello_world


def say_hello name1, name2
	puts "hello, #{name1} and #{name2}"
end
say_hello "oscar", "eduardo"

#Default Parameters
def say_hello name1 ="oscar", name2="shane"
	puts "hello, #{name1} and #{name2}"
end
say_hello
say_hello "oscar"
say_hello "derek"
say_hello nil, "derek"
# How can skip first name??????

#Output
#default return
def say_hello name1="oscar", name2="shane"
	"hello, #{name1} and #{name2}"
end
puts say_hello "oscar", "eduardo"

# Regular Return Statements
def say_hello name1, name2
	if name1.empty? or name2.empty?
		return "Who are you?!"
	end
	"hello, #{name1} and #{name2}"
end
puts say_hello "Derek", "James"







