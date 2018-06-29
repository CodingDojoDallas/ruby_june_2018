################ Public

# class Mammal
# 	def breath
# 		puts "Inhale and exhale"
# 	end

# 	def eat
# 		puts "Yum yum yum"
# 	end
# end

# class Human < Mammal
# 	def subclass_method
# 		breath
# 	end
# 	def another_method
# 		self.eat
# 	end
# end
# person = Human.new
# person.subclass_method
# person.another_method

################ Protected

# class Mammal
# 	def breath
# 		puts "Inhale and exhale"
# 	end

# 	def eat
# 		puts "Yum yum yum"
# 	end

# 	def calling_speak
# 		speak
# 	end

# 	protected
# 		def speak
# 			puts "I am a protected method"
# 		end
# end

# class Human < Mammal
# 	def subclass_method
# 		breath
# 	end
# 	def another_method
# 		self.eat
# 	end
# 	def explicitly_speak
# 		self.speak
# 	end

# 	def implicitily_speak
# 		speak
# 	end
# end

# mammal = Mammal.new
# # mammal.speak
# # mammal.calling_speak
# person = Human.new
# # person.speak
# person.explicitly_speak
# person.implicitily_speak


####################Private

class Mammal
	def breath
		puts "Inhale and exhale"
	end

	def eat
		puts "Yum yum yum"
	end

	def calling_speak
		speak
	end
	def calling_cry
		cry
	end
	private
		def cry
			puts "Sniff sniff..."
		end

	protected
		def speak
			puts "I am a protected method"
		end
end

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

mammal = Mammal.new
# mammal.speak
# mammal.calling_speak

mammal.calling_cry
# mammal.cry
person = Human.new
# person.cry
# person.explicitly_cry
person.implicitly_cry
# person.speak
# person.explicitly_speak
person.implicitily_speak






















