puts 'I am in the human file'
require_relative 'mammal'


class Human < Mammal
	def subclass_method
		breath
	end
	def another_method
		self.eat
	end
	def explicitly_speak
		self.speak
	end

	def implicitily_speak
		speak
	end
	def explicitly_cry
		self.cry
	end
	def implicitly_cry
		cry
	end
end

person = Human.new
person.subclass_method
person.another_method
# person.cry
# person.explicitly_cry
person.implicitly_cry
# person.speak
person.explicitly_speak
# person.implicitily_speak