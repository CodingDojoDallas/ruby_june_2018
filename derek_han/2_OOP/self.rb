class Fixnum
	def who_am_i
		puts self
	end
end
class String
	def who_am_i
		puts self
	end
end
4.who_am_i
15.who_am_i
"string".who_am_i
"hello_world".who_am_i


class Mammal
	def initialize
		puts "I am alive"
		self
	end
	def breath
		puts "Inhale and exhale"
		self
	end

	def who_am_i
		self
	end
end
my_mammal = Mammal.new
my_mammal.who_am_i
my_mammal.who_am_i.breath